for i in *.jpg *.JPG *.jpeg; do
    if [ "$i" -nt "./thumbs/$i" ]; then
        echo "$i"
        convert "$i" -thumbnail 300 "./thumbs/$i";
    fi
done;
