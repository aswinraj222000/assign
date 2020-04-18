function tryagain {
        echo "WRONG GUESS: NOW TRY AGIAN: ENTER YOUR GUESS AGAIN"
        read resp
        resp=$(( resp + 1 ))
}
echo "Enter Your Response"
read resp
resp=$(( resp + 1 ))
f=0
while [ $f -eq 0 ]
do
   if [[ $(ls -l | wc -l) -gt $resp ]]
   then
      echo "TOO LOW"
   elif [[ $(ls -l | wc -l) -lt $resp ]]
   then   
      echo "TOO HIGH"
   else [[ $(ls -l | wc -l) -eq $resp ]]
      echo "CONGRATS! CORRECT GUESS"
      f=1
   fi
   if [[ $f == 0 ]]
   then
      tryagain
   fi
done


