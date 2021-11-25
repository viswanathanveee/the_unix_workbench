corr_ans=$(ls | wc -l)

function calc_total_files(){
    read  guess
    if [ $guess -lt $corr_ans ]
    then
        echo "The number entered is less than the actual number. Please retry:"
        calc_total_files
    elif [ $guess -gt $corr_ans ]
    then
        echo "The number entered is greater than the actual number. Please retry:"
        calc_total_files
    else
        echo "You have guessed the correct number."
    fi
}
echo "Guess the number of files: "
calc_total_files
