for i in *.jpg *.JPG *.jpeg; do
    if [ "$i" -nt "./fulls/$i" ]; then
        convert "$i" -thumbnail 1000 "./fulls/$i";
    fi
done;
