#!/bin/sh
printf "=== Removing an old archive if it exists\n"
                               rm -f "./xc32-v4.09-src.zip"
printf "=== Making a new archive from its parts\n"
                               touch "./xc32-v4.09-src.zip"
cat "./xc32-v4.09-src.zip_part01" >> "./xc32-v4.09-src.zip"
cat "./xc32-v4.09-src.zip_part02" >> "./xc32-v4.09-src.zip"
cat "./xc32-v4.09-src.zip_part03" >> "./xc32-v4.09-src.zip"
cat "./xc32-v4.09-src.zip_part04" >> "./xc32-v4.09-src.zip"
cat "./xc32-v4.09-src.zip_part05" >> "./xc32-v4.09-src.zip"
cat "./xc32-v4.09-src.zip_part06" >> "./xc32-v4.09-src.zip"
cat "./xc32-v4.09-src.zip_part07" >> "./xc32-v4.09-src.zip"
cat "./xc32-v4.09-src.zip_part08" >> "./xc32-v4.09-src.zip"
cat "./xc32-v4.09-src.zip_part09" >> "./xc32-v4.09-src.zip"
printf "=== Doing a sync command (just in case)\n"
sync
printf "=== Finding a sha256sum of this archive\n"
sha256sum_correct="275d04234907aa6a6854cf62fa8c67f2ae0796a175e0b95b690f2cae9e098ac8  ./xc32-v4.09-src.zip"
sha256sum_my=$(sha256sum "./xc32-v4.09-src.zip")
printf "=== sha256sum should be\n$sha256sum_correct\n"
if [ "$sha256sum_my" = "$sha256sum_correct" ] ; then
    printf "^^^ this is correct, you can use a ./xc32-v4.09-src.zip now...\n"
    exit 0
else
    printf "^^^ ! MISMATCH ! Check sha256sum manually: sha256sum ./xc32-v4.09-src.zip\n"
    exit 1
fi
###
