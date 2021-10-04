for file in ./src/*; do
  name="${file##*/}"
  name="${name%.*}"
  gcc $file -o ./$name
done
