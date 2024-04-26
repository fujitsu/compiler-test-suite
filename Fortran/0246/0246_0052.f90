INTEGER :: K,X,M,L,N,arr(5)
X=0
arr=(/ 1,2,3,4,5 /)
do concurrent(K=1:5,M=1:3,L=3:6,N=8:10,arr(K)>=3 .AND. M /= L)
X = X + 1
 end do
 if (X == 99) then
 Print *,"PASS"
else
Print *,"FAIL ",X
 end if
 End

