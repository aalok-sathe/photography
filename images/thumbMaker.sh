for i in *.jpg *.JPG *.jpeg *.png; do
    if [ "$i" -nt "./thumbs/$i" ] | true; then
        echo "$i"
        convert "$i" -thumbnail 500 "./thumbs/$i";
    fi
done;
