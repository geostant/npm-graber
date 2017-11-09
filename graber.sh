rm -rf node_modules

app=`cat package.json | jq '.dependencies' | tr -d "}" | tr -d "{" | tail -n +2 | head -n -1 | cut -d"\"" -f2`

for a in $app;
do
	arr=`npm view $a versions | sed 's/:.*//'`
	d1="["
	d2="]"
	arr=( "${arr[@]/$d1}" )
	arr=( "${arr[@]/$d2}" )

	for v in $arr;
	do
		v=`echo $v | cut -d"'" -f2`
		echo "version is: $v"
		npm install $a@$v
		rm -rf node_moduels
	done
done

