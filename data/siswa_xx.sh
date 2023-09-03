siswa_9d=(
[1]="Name"
[2]="Name"
[3]="Name"
[4]="Name"
[5]="Name"
[6]="Name"
[7]="Name"
[8]="Name"
[9]="Name"
[10]="Name"
[11]="Name"
[12]="Name"
[13]="Name"
[14]="Name"
[15]="Name"
[16]="Name"
[17]="Name"
[18]="Name"
[19]="Name"
[20]="Name"
[21]="Name"
[22]="Name"
[23]="Name"
[24]="Name"
[25]="Name"
[26]="Name"
[27]="Name"
[28]="Name"
[29]="Name"
[30]="Name"
)

get() {
	[[ -n "${siswa_9d[$1]}" ]] && echo "${siswa_9d[$1]}" || { echo "No match found."; exit 1; }
}

reverse_lookup(){
	# i dont care how long it takes [to execute]
	# as long as i can get the answer
	# i've got a smile on my face
	for i in {1..30}
	do
		if [[ "${1@L}" == "${siswa_9d[$i]@L}" ]]
		then
			echo "$i"
			exit 0
		fi
	done
	exit 1

}
case "$1" in
	get)
		if [[ -n "$2" ]]
		then
			get "$2"
		else
			echo "Index required!"
			exit 1
		fi
		;;
	rev_lookup)
		if [[ -n "$2" ]]
		then
			reverse_lookup "$2"
		else
			echo "Index required!"
			exit 1
		fi
		;;
esac

