while getopts u:a:f: flag
do
    case "${flag}" in
        y) yaml=${OPTARG};;
        v) variables=${OPTARG};;
    esac
done

cat $variables >> $GITHUB_ENV

envsubst < $yaml | kubectl apply -f -