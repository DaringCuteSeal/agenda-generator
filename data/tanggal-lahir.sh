#!/bin/bash
declare -A dates=(
#       [mm_dd]=class_no
        [03_03]=05
	[11_12]=19
	[02_06]=1
	[09_19]=6
	[03_18]=9
	[03_16]=11
	[10_05]=15

)

source "$HOME/Documents/School/siswa_db/siswa_9d.sh"

if [[ "$1" == "month" ]]
then
	echo "Birthdays this month:"

	for i in "${!dates[@]}"
	do
	 	# i is a date as in month_date.
		# if i is this month...
		if [[ "${i%_*}" == "$(date +%0m)" ]]
		then
			# make vals the numbers for that day
			eval "vals=${dates[$i]}"

			# loop through numbers
			for j in "${vals[@]}"
			do
				echo "• ${siswa_8d[$j]} (${i##*_} $(date +%B))"
				#echo "• ${siswa_8d[${dates[$j]}]}: $(date -d "${j%_*}/${j#*_}/$(date +%Y)" '+%b %d')"
			done
		fi
	done
	exit 0
fi

	
if [[ "$1" == "tom" ]]
then
	date_today="$(date -d "tomorrow" '+%m_%d')"
else
	date_today="$(date '+%m_%d')"
fi

eval "siswa_today_tmp="${dates[$date_today]}""

[[ -z "${siswa_8d[${siswa_today_tmp[@]}]}" ]] && exit 1

if [[ ${#siswa_today_tmp[@]} -gt 1 ]]
then
	for (( i=0; i < ${#siswa_today_tmp[@]}; i++ ))
	do
		siswa_today+=("${siswa_8d[${siswa_today_tmp[$i]}]}")
	done
else
	siswa_today="${siswa_8d[${dates[$date_today]}]}"
fi

if [[ "$1" == "tom" ]]
then
	echo "🎉 Ulang tahun besok:"
else
	echo "🎉 Ulang tahun hari ini:"
fi

for (( i=0; i < ${#siswa_today[@]}; i++ ))
do
	echo "• ${siswa_today[$i]}"
done

echo

IFS=":"

siswa_print="${siswa_today[*]}"
siswa_print="${siswa_print//:/, }"
echo "Selamat ulang tahun, ${siswa_print}! 🥳🎁"
