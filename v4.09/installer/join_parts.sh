#!/bin/sh
printf "=== Removing an old archive if it exists\n"
                                                          rm -f "./xc32-v4.09-full-install-linux-installer.run"
printf "=== Making a new archive from its parts\n"
                                                          touch "./xc32-v4.09-full-install-linux-installer.run"
cat "./xc32-v4.09-full-install-linux-installer.run_part01" >> "./xc32-v4.09-full-install-linux-installer.run"
cat "./xc32-v4.09-full-install-linux-installer.run_part02" >> "./xc32-v4.09-full-install-linux-installer.run"
cat "./xc32-v4.09-full-install-linux-installer.run_part03" >> "./xc32-v4.09-full-install-linux-installer.run"
cat "./xc32-v4.09-full-install-linux-installer.run_part04" >> "./xc32-v4.09-full-install-linux-installer.run"
cat "./xc32-v4.09-full-install-linux-installer.run_part05" >> "./xc32-v4.09-full-install-linux-installer.run"
cat "./xc32-v4.09-full-install-linux-installer.run_part06" >> "./xc32-v4.09-full-install-linux-installer.run"
printf "=== Doing a sync command (just in case)\n"
sync
printf "=== Finding a sha256sum of this archive\n"
sha256sum_correct="6897958b694272bf022567fd4cd6fe47ca7353997fcc1300d0d4c0b4aaffaa0a  ./xc32-v4.09-full-install-linux-installer.run"
sha256sum_my=$(sha256sum "./xc32-v4.09-full-install-linux-installer.run")
printf "=== sha256sum should be\n$sha256sum_correct\n"
if [ "$sha256sum_my" = "$sha256sum_correct" ] ; then
    printf "^^^ this is correct, you can use a ./xc32-v4.09-full-install-linux-installer.run now...\n"
                                     chmod +x "./xc32-v4.09-full-install-linux-installer.run"
    exit 0
else
    printf "^^^ ! MISMATCH ! Check sha256sum manually: sha256sum ./xc32-v4.09-full-install-linux-installer.run\n"
    exit 1
fi
###
