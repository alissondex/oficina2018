
case "$1" in
	[0-9])
		echo "O parametro é um numero"
		;;
	[A-Z])
		echo "O parametro é uma letra"
		;;
	[a-z])
		echo "O parametro é um carcater especial"
		;;
	*)
		echo "O parametro é um caracter especial"
esac