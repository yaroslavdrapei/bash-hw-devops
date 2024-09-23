#!/bin/bash

db='db.txt'

add() {
  echo 'Name: '
  read name
  echo 'Number: '
  read number
  echo 'Email: '
  read email

  echo "$name $number $email" >> $db
}

search() {
  echo 'Search: '
  read request

  grep "$request" "$db"
}

remove() {
  echo 'Remove: '
  read request

  grep "$request" "$db"
  
  sed -i "/$request/d" "$db"
}

case "$1" in
  add)
    add;;
  search)
    search;;
  remove)
    remove;;
    
esac