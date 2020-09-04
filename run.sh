for i in {1..100}
do
   echo "******************************************************"
   echo "* Pipeline Run $i out of 100                         *"
   echo "******************************************************"
   echo
   echo "Tiggering new run ..."
   ./demo.sh run &
   SLEEPTIME=$(( $RANDOM % 60 ))
   echo Next job will after $SLEEPTIME seconds
   sleep $SLEEPTIME
done
