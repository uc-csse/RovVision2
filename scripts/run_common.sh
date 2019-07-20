function init_docker_image {
tmux send-keys "cd $DRONESIMLAB_PATH/dockers/python3_dev && ./run_image.sh" ENTER
}

function new_4_win {
tmux split-window -h
tmux select-pane -t 0
tmux split-window -v
tmux select-pane -t 2
tmux split-window -v
}


function new_6_win {
tmux split-window -h
tmux select-pane -t 0
tmux split-window -v
tmux select-pane -t 2
tmux split-window -v
tmux select-pane -t 0
tmux split-window -v
tmux select-pane -t 3
tmux split-window -v
}



function run { #pane number, path, script
tmux select-pane -t $1 
init_docker_image
tmux send-keys "bash" ENTER
tmux send-keys "cd $PROJECT_PATH/$2" ENTER
tmux send-keys "$PYTHON $3" ENTER

}

#tmux send-keys "python drone_main.py" ENTER

