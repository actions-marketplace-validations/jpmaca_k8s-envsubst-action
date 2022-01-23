while getopts f: flag
do
    case "${flag}" in
        f) file=${OPTARG};;
    esac
done

cat $file >> $GITHUB_ENV