read -p "Enter first numberii :" X
read -p "Enter Second number :" Y
PI=$(echo "scale=10; 3.141592653589" | bc -l) 



R=$(echo " sqrt($X^2+$Y^2)" | bc -l)

theta= $(echo  "a($Y/$X)" | bc -l )
printf "%.5f" $theta
theta_2=$(echo "scale=10; ($theta*180)/$PI" | bc -l) 
#theta = 
if [[ ($X -gt 0 && $Y -gt 0)]]; 
then
 theta_3=$(echo "scale=10; 90-$theta_2" | bc -l )

elif [[ ($X -lt 0 && $Y -gt 0) ]]; 
then
 theta_3=$(echo "scale=10; 180-$theta_2 " | bc -l )

elif [[ ($X -lt 0 && $Y -lt 0) ]]; 
then
 theta_3=$(echo "scale=10; 270-$theta_2" | bc -l )

else 
#elif [ $X -gt 0 && $Y -lt 0 ]; then
 theta_3=$(echo "scale=10; 360-$theta_2" | bc -l )


fi
#echo "scale=2; sqrt(($X^2)+($Y^2))" | bc
#echo "scale=5; a($Y/$X) " | bc
printf "%.5f %.5f" $R $theta_3 
 
