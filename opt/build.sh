#!/bin/sh
build_image() {
    
    command="${1}"

    config_name="pi0w"
    config_dir="./${config_name}"
    rootfs_overlay="./rootfs-overlay"
    config_file="${config_dir}/configs/pi0w"
    build_dir="../output"
    build2_dir="${cur_dir}/../../output"
    image_dir="${cur_dir}/../images"

    #command=menuconfig #savedefconfig #${config_name}_defconfig

    echo "hello world"

    echo ${command}

    make BR2_EXTERNAL="../${config_dir}/" O="${build_dir}" -C ./buildroot/ ${command}

}

command=$1
command2=$2
build_image "${command} ${command2}"
