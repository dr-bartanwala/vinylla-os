sync_overlay() {
    #copy the entire rootfs overlay folder to raspberry pi on the network
   sshpass -p "1234" rsync -e "ssh -o StrictHostKeyChecking=no" -r ./rootfs-overlay/ root@192.168.1.3:/
}

sync_overlay
