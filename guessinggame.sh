function tryagain {
        echo "WRONG GUESS: NOW TRY AGIAN: ENTER YOUR GUESS AGAIN"
        read resp
}
echo "HOW MANY FILES ARE THERE? MAKE A GUESS"
read resp
f=0
while [ $f -eq 0 ]
do
   if [[ $(ls -p | grep -v / | wc -l) -gt $resp ]]
   then
      echo "TOO LOW"
   elif [[ $(ls -p | grep -v / | wc -l) -lt $resp ]]
   then   
      echo "TOO HIGH"
   else [[ $(ls -p | grep -v / | wc -l) -eq $resp ]]
      echo "CONGRATS! CORRECT GUESS"
      f=1
   fi
   if [[ $f == 0 ]]
   then
      tryagain
   fi
done
