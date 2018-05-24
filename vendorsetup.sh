for var in eng user userdebug; do
  add_lunch_combo lineage_panelli-$var
done

git clone https://github.com/LineageOS/android_packages_resources_devicesettings -b cm-14.1 packages/resources/devicesettings
