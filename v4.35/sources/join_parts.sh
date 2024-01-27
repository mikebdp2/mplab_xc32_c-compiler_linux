#!/bin/sh
printf "=== Removing an old archive if it exists\n"
                               rm -f "./xc32-v4.35-src.zip"
printf "=== Making a new archive from its parts\n"
                               touch "./xc32-v4.35-src.zip"
cat "./xc32-v4.35-src.zip_part01" >> "./xc32-v4.35-src.zip"
cat "./xc32-v4.35-src.zip_part02" >> "./xc32-v4.35-src.zip"
cat "./xc32-v4.35-src.zip_part03" >> "./xc32-v4.35-src.zip"
cat "./xc32-v4.35-src.zip_part04" >> "./xc32-v4.35-src.zip"
cat "./xc32-v4.35-src.zip_part05" >> "./xc32-v4.35-src.zip"
cat "./xc32-v4.35-src.zip_part06" >> "./xc32-v4.35-src.zip"
cat "./xc32-v4.35-src.zip_part07" >> "./xc32-v4.35-src.zip"
cat "./xc32-v4.35-src.zip_part08" >> "./xc32-v4.35-src.zip"
printf "=== Doing a sync command (just in case)\n"
sync
printf "=== Finding a sha256sum of this archive\n"
sha256sum_correct="e14eb173700d21f8d6f2529348a393fa6e8f4d79ac1a0d1a54dd3e29806e138f  ./xc32-v4.35-src.zip"
sha256sum_my=$(sha256sum "./xc32-v4.35-src.zip")
printf "=== sha256sum should be\n$sha256sum_correct\n"
if [ "$sha256sum_my" = "$sha256sum_correct" ] ; then
    printf "^^^ this is correct, you can use a ./xc32-v4.35-src.zip now...\n"
    exit 0
else
    printf "^^^ ! MISMATCH ! Check sha256sum manually: sha256sum ./xc32-v4.35-src.zip\n"
    exit 1
fi
###
