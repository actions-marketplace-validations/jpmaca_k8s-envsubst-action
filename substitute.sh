while getopts y: flag
do
    case "${flag}" in
        y) yaml=${OPTARG};;
    esac
done

envsubst < $yaml | kubectl apply -f -