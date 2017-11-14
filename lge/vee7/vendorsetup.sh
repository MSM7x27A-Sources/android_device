/bin/cp device/lge/vee7/post_process_props_hook.py build/tools/
chmod  0775 build/tools/post_process_props_hook.py

add_lunch_combo cm_vee7-eng
add_lunch_combo cm_vee7-userdebug
add_lunch_combo cm_vee7-user dist

sh device/lge/vee7/patches/apply.sh
croot

rm -rf out/target/product/vee7/obj/PACKAGING/target_files_intermediates
rm -f out/target/product/vee7/system/build.prop
rm -f out/target/product/vee7/root/default.prop 
