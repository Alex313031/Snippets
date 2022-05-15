#!/bin/bash

# Copyright (c) 2022 Alex313031 and Midzer.

YEL='\033[1;33m' # Yellow

printf "\n" &&
printf "${YEL}Rebasing/Syncing and running hooks...\n" &&
tput sgr0 &&

cd $HOME/chromium/src/v8/ &&

git checkout -f origin/main &&

cd $HOME/chromium/src &&

rm -v -f $HOME/chromium/src/ui/webui/resources/images/infra.png &&

git checkout -f origin/main &&

git rebase main &&

gclient sync --no-history -f -R -D &&

gclient runhooks &&

printf "${YEL}Done!\n" &&
printf "\n" &&

printf "${YEL}Downloading PGO Profiles for Linux, Windows, and Mac...\n" &&
printf "\n" &&
tput sgr0 &&

python3 tools/update_pgo_profiles.py --target=linux update --gs-url-base=chromium-optimization-profiles/pgo_profiles &&

python3 tools/update_pgo_profiles.py --target=win64 update --gs-url-base=chromium-optimization-profiles/pgo_profiles &&

python3 tools/update_pgo_profiles.py --target=mac update --gs-url-base=chromium-optimization-profiles/pgo_profiles &&

printf "\n" &&

printf "${YEL}Done! You can now run ./setup.sh.\n"
tput sgr0

exit 0
