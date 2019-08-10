#!/usr/bin/env bash

# just show the message
greeting() {
    echo "Hello from bash!"
}

# ask username and password, -p (prompt), -sp (silent prompt)
ask_credentials() {
    read -p "Username: " username
    read -sp "Password: " password
    # echo "Username is: $username, password is: $password"
    echo "Thank you, $username! We remember your credentials."
}

# two ways of command execution
execute_commands() {
    result1=`pwd`
    echo "result1: $result1"

    a=1
    b=2
    result2=$(($a + $b))
    echo "result2: $result2"
}

# ask enter username and find value in users.txt
find_user() {
    read -p "Find user by name: " user
    if grep $user ./files/users.txt
    then
    echo "User exists"
    else
    echo "User not found"
    fi
}

# sort lines and write result into another file
sort_users() {
    sort ./files/users.txt
}

# sort lines by column and write result into another file, -r (reverse), -n (numeric), -k (column number)
sort_users_by_column() {
    sort -k 2nr ./files/users_column.txt
}

for_in_loop() {
    for user in $(cat ./files/users.txt)
    do
        echo "$user"
    done

    for i in {0..9..3}
    do
        echo "Number: $i"
    done

    for ((i=0; i<5; i++))
    do
        echo "Number is: $i"
    done
}

# write the function here to execute in the current process
for_in_loop
sleep 1s