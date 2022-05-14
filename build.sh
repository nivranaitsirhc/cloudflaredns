#!/bin/bash
rm -f ./install.zip
zip install.zip common/* META-INF/com/google/android/* customize.sh LICENSE module.prop system.prop post-fs-data.sh service.sh README.md uninstall.sh
git add install.zip update.json changelog.md module.prop