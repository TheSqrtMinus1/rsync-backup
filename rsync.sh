#!/bin/bash
tmux kill-session -t rsync ; tmux new-session -d -s rsync ;
tmux send-keys -t rsync "sudo rsync -aS -HAX -vh -uz --compress-level=9 --progress --rsync-path=\"sudo rsync\" --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/back/*"} -e \"ssh -l steph -i /home/gabe/.ssh/id_rsa\" / /back" ENTER
exit 0
