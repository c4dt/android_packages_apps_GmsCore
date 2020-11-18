#!/usr/bin/env bash

MODULES="\
    play-services-nearby-core-ui \
    play-services-tasks \
    play-services-base-core-ui \
    play-services-nearby-core \
    play-services-basement \
    play-services-nearby-api \
    play-services-nearby \
    play-services-base-core \
    play-services-base-api \
    play-services-base \
    "

echo "sdk.dir=${ANDROID_SDK_ROOT}" > local.properties

for module in ${MODULES}
do
    ./gradlew :${module}:assembleRelease
done

