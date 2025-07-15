#!/usr/bin/with-contenv bashio

MOUNT_POINT=$(bashio::config 'mount_point')
DEVICE=$(bashio::config 'device')
FILESYSTEM$(bashio::config 'file_system')

echo "[INFO] Mounting $DEVICE to $MOUNT_POINT..."

mkdir -p $MOUNT_POINT

if mountpoint -q $MOUNT_POINT; then
  echo "[INFO] Already mounted."
else
  mount -t $FILESYSTEM $DEVICE $MOUNT_POINT && echo "[INFO] Mounted successfully." || echo "[ERROR] Mount failed."
fi

# Keep running so HA doesn't stop the addon
tail -f /dev/null