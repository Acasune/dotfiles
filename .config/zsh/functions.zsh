#==============================================================#
##          Functions                                         ##
#==============================================================#

mkd() {
    if [[ "$#" -eq 0 ]]; then
        echo "mkdir: オペランドがありません"
    else
        command mkdir -p "$@"
    fi
}


rmr() {
    if [[ "$#" -eq 0 ]]; then
        echo "rm -rf: オペランドがありません"
    else
        command mkdir -p "$@"
    fi
}

docker-rm() {
    if [[ "$#" -eq 0 ]]; then
        command docker ps -a | fzf --exit-0 --multi --header-lines=1 | awk '{ print $1 }' | xargs -r docker rm --
    else
        command docker rm "$@"
    fi
}

docker-rmi() {
    if [[ "$#" -eq 0 ]]; then
        command docker images | fzf --exit-0 --multi --header-lines=1 | awk '{ print $3 }' | xargs -r docker rmi --
    else
        command docker rmi "$@"
    fi
}