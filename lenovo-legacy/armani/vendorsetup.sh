#/bin/cp device/lenovo/armani/post_process_props_hook.py build/tools/
#chmod  0775 build/tools/post_process_props_hook.py

add_lunch_combo lineage_armani-eng
add_lunch_combo lineage_armani-userdebug
add_lunch_combo lineage_armani-user dist

#sh device/lenovo/armani/patches/apply.sh
#croot

#sh device/lenovo/armani/update-overlay.sh

#rm -rf out/target/product/armani/obj/PACKAGING/target_files_intermediates
#rm -f out/target/product/armani/system/build.prop
#rm -f out/target/product/armani/root/default.prop 