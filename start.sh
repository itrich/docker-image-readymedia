#!/bin/sh

if [[ ! -f "/cache/minidlna.conf" ]] then
  cp /etc/minidlna.conf /cache/
fi

cp -f /cache/minidlna.conf /tmp/minidlna.conf

echo "port=${TCP_PORT}" >> /tmp/minidlna.conf
echo "friendly_name=${FRIENDLY_NAME}" >> /tmp/minidlna.conf
echo "serial=${SERIAL}" >> /tmp/minidlna.conf

# All media dirs
if [[ ! -z "${ALL_MEDIA_DIR1}" ]]; then
  echo "media_dir=${ALL_MEDIA_DIR1}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${ALL_MEDIA_DIR2}" ]]; then
  echo "media_dir=${ALL_MEDIA_DIR2}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${ALL_MEDIA_DIR3}" ]]; then
  echo "media_dir=${ALL_MEDIA_DIR3}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${ALL_MEDIA_DIR4}" ]]; then
  echo "media_dir=${ALL_MEDIA_DIR4}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${ALL_MEDIA_DIR5}" ]]; then
  echo "media_dir=${ALL_MEDIA_DIR5}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${ALL_MEDIA_DIR6}" ]]; then
  echo "media_dir=${ALL_MEDIA_DIR6}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${ALL_MEDIA_DIR7}" ]]; then
  echo "media_dir=${ALL_MEDIA_DIR7}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${ALL_MEDIA_DIR8}" ]]; then
  echo "media_dir=${ALL_MEDIA_DIR8}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${ALL_MEDIA_DIR9}" ]]; then
  echo "media_dir=${ALL_MEDIA_DIR9}" >> /tmp/minidlna.conf
fi

# Video
if [[ ! -z "${VIDEO_DIR1}" ]]; then
  echo "media_dir=V,${VIDEO_DIR1}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR2}" ]]; then
  echo "media_dir=V,${VIDEO_DIR2}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR3}" ]]; then
  echo "media_dir=V,${VIDEO_DIR3}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR4}" ]]; then
  echo "media_dir=V,${VIDEO_DIR4}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR5}" ]]; then
  echo "media_dir=V,${VIDEO_DIR5}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR6}" ]]; then
  echo "media_dir=V,${VIDEO_DIR6}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR7}" ]]; then
  echo "media_dir=V,${VIDEO_DIR7}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR8}" ]]; then
  echo "media_dir=V,${VIDEO_DIR8}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR9}" ]]; then
  echo "media_dir=V,${VIDEO_DIR9}" >> /tmp/minidlna.conf
fi

# Audio
if [[ ! -z "${AUDIO_DIR1}" ]]; then
  echo "media_dir=A,${AUDIO_DIR1}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR2}" ]]; then
  echo "media_dir=A,${AUDIO_DIR2}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR3}" ]]; then
  echo "media_dir=A,${AUDIO_DIR3}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR4}" ]]; then
  echo "media_dir=A,${AUDIO_DIR4}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR5}" ]]; then
  echo "media_dir=A,${AUDIO_DIR5}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR6}" ]]; then
  echo "media_dir=A,${AUDIO_DIR6}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR7}" ]]; then
  echo "media_dir=A,${AUDIO_DIR7}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR8}" ]]; then
  echo "media_dir=A,${AUDIO_DIR8}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR9}" ]]; then
  echo "media_dir=A,${AUDIO_DIR9}" >> /tmp/minidlna.conf
fi

# Pictures
if [[ ! -z "${PICTURES_DIR1}" ]]; then
  echo "media_dir=P,${PICTURES_DIR1}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR2}" ]]; then
  echo "media_dir=P,${PICTURES_DIR2}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR3}" ]]; then
  echo "media_dir=P,${PICTURES_DIR3}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR4}" ]]; then
  echo "media_dir=P,${PICTURES_DIR4}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR5}" ]]; then
  echo "media_dir=P,${PICTURES_DIR5}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR6}" ]]; then
  echo "media_dir=P,${PICTURES_DIR6}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR7}" ]]; then
  echo "media_dir=P,${PICTURES_DIR7}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR8}" ]]; then
  echo "media_dir=P,${PICTURES_DIR8}" >> /tmp/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR9}" ]]; then
  echo "media_dir=P,${PICTURES_DIR9}" >> /tmp/minidlna.conf
fi

/usr/sbin/minidlnad -P /run/minidlna.pid -f /tmp/minidlna.conf -S -r

exit_code=$?

rm -f /run/minidlna.pid

exit $exit_code
