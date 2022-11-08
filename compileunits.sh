#|/bin/sh

for d in $1/*/; do
	sd=$(echo "$d" | cut -d"/" -f2) 
	for f in $1/$sd/*; do
		f2=$(echo "$f" | cut -d"/" -f3)
		echo "$2/$sd/$f2\n"
		gcc $1/$sd/$f2 $2/$sd/$f2 -o $2/$sd/$f2.out
	done
done


