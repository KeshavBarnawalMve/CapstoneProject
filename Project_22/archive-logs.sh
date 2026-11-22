#!/bin/bash

LOG_SOURCE="/var/log/project22"
ARCHIVE_DIR="./archives"
LOCAL_LOG="./archive-logs/archive.log"

TIMESTAMP=$(date +%Y%m%d-%H%M%S)

ARCHIVE_NAME="project22-logs-${TIMESTAMP}.tar.gz"

mkdir -p ${ARCHIVE_DIR}
mkdir -p ./archive-logs

echo "[$(date)] Starting archive process" >> ${LOCAL_LOG}

tar -czf ${ARCHIVE_DIR}/${ARCHIVE_NAME} ${LOG_SOURCE}

if [ $? -eq 0 ]; then
    echo "[$(date)] Archive created: ${ARCHIVE_NAME}" >> ${LOCAL_LOG}
else
    echo "[$(date)] Archive creation failed" >> ${LOCAL_LOG}
    exit 1
fi

aws s3 cp ${ARCHIVE_DIR}/${ARCHIVE_NAME} s3://${BUCKET_NAME}/

if [ $? -eq 0 ]; then
    echo "[$(date)] Upload successful: ${ARCHIVE_NAME}" >> ${LOCAL_LOG}
else
    echo "[$(date)] Upload failed" >> ${LOCAL_LOG}
    exit 1
fi

aws s3 ls s3://${BUCKET_NAME}/${ARCHIVE_NAME}

if [ $? -eq 0 ]; then
    echo "[$(date)] Verification successful" >> ${LOCAL_LOG}
else
    echo "[$(date)] Upload verification failed" >> ${LOCAL_LOG}
    exit 1
fi

echo "[$(date)] Completed archive process" >> ${LOCAL_LOG}
