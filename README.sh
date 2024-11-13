function guessinggame() {
    # Count only the number of regular files in the current directory
    no_of_files=$(find . -maxdepth 1 -type f | wc -l)

    while true; do
        echo "Please enter your guess:"
        read number

        if [ "$number" -lt "$no_of_files" ]; then
            echo "Your guess is less than the number of files."
        elif [ "$number" -gt "$no_of_files" ]; then
            echo "Your guess is greater than the number of files."
        else
            echo "Congratulations! Your guess is correct!"
            break
        fi
    done
}

echo "Guess how many files are there in the current directory?"
guessinggame

<!---
hmiiich/hmiiich is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
