function guess(){
    corr_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Guess the number of files: "
        read  number
        if [ $number -lt $corr_ans ]
        then
            echo "The number entered is less than the actual number. Please retry:"
        elif [ $number -gt $corr_ans ]
        then
            echo "The number entered is greater than the actual number. Please retry:"
        else
            echo "Congratulations! The entered number is correct."
        break;
        fi
    done
}
guess
