for file in ./src/*; do
  name="${file##*/}"
  name="${name%.*}"
  gcc $file -o dist/$name
done
