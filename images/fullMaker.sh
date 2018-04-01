for i in *.jpg *.JPG *.jpeg *.png; do
    if [ "$i" -nt "./fulls/$i" ] | true; then
        echo "$i"
        convert "$i" -thumbnail 1200 "./fulls/$i";
    fi
done;
