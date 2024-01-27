#!/bin/sh
printf "=== Removing an old archive if it exists\n"
                                                            rm -f "./xc32-v4.35-full-install-linux-x64-installer.tar"
printf "=== Making a new archive from its parts\n"
                                                            touch "./xc32-v4.35-full-install-linux-x64-installer.tar"
cat "./xc32-v4.35-full-install-linux-x64-installer.tar_part01" >> "./xc32-v4.35-full-install-linux-x64-installer.tar"
cat "./xc32-v4.35-full-install-linux-x64-installer.tar_part02" >> "./xc32-v4.35-full-install-linux-x64-installer.tar"
cat "./xc32-v4.35-full-install-linux-x64-installer.tar_part03" >> "./xc32-v4.35-full-install-linux-x64-installer.tar"
cat "./xc32-v4.35-full-install-linux-x64-installer.tar_part04" >> "./xc32-v4.35-full-install-linux-x64-installer.tar"
cat "./xc32-v4.35-full-install-linux-x64-installer.tar_part05" >> "./xc32-v4.35-full-install-linux-x64-installer.tar"
cat "./xc32-v4.35-full-install-linux-x64-installer.tar_part06" >> "./xc32-v4.35-full-install-linux-x64-installer.tar"
cat "./xc32-v4.35-full-install-linux-x64-installer.tar_part07" >> "./xc32-v4.35-full-install-linux-x64-installer.tar"
cat "./xc32-v4.35-full-install-linux-x64-installer.tar_part08" >> "./xc32-v4.35-full-install-linux-x64-installer.tar"
cat "./xc32-v4.35-full-install-linux-x64-installer.tar_part09" >> "./xc32-v4.35-full-install-linux-x64-installer.tar"
printf "=== Doing a sync command (just in case)\n"
sync
printf "=== Finding a sha256sum of this archive\n"
sha256sum_correct="56004fd681edd6513f8cbc5e88e2d453b9ba1a68dd063262649e9a8b540d2709  ./xc32-v4.35-full-install-linux-x64-installer.tar"
sha256sum_my=$(sha256sum "./xc32-v4.35-full-install-linux-x64-installer.tar")
printf "=== sha256sum should be\n$sha256sum_correct\n"
if [ "$sha256sum_my" = "$sha256sum_correct" ] ; then
    printf "^^^ this is correct, you can use a ./xc32-v4.35-full-install-linux-x64-installer.tar now...\n"
    exit 0
else
    printf "^^^ ! MISMATCH ! Check sha256sum manually: sha256sum ./xc32-v4.35-full-install-linux-x64-installer.tar\n"
    exit 1
fi
###
