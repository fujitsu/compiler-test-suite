INTEGER :: K,X,M,L,N,arr(5),Y
X=0
Y=0
arr=(/ 1,2,3,4,5 /)
do concurrent(K=1:5,M=1:3,L=3:6,arr(K)>=3)
 do concurrent (N=2:4)
if(arr(M) /= arr(K)) then
 X = X + 1
 Y = Y + X
end if

 end do
end do
 if (Y == 4656) then
 Print *,"PASS"
else
Print *,"FAIL ",Y
 end if
 End

