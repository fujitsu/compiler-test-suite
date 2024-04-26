INTEGER :: K,arr(5),arr2(6)
arr=(/ 1,2,3,4,5 /)
arr2=(/ 1,2,3,4,5,6 /)
do concurrent(K=1:5)
  if(arr2(K) /=6) then
   arr(K)=arr2(K) + arr2(K+1)+1
  else
    forall(L=1:5,L /= 1)
      arr(L)=arr2(L) + arr2(L-1)
      arr(L)=arr2(L) - 1
    end forall
  end if

end do
if(arr(2) .eq. 6 .AND. arr(3) ==8 .AND. arr(4)==10 .AND. arr(5) == 12) then
 Print *,"PASS"
else
 Print *,"FAIL ",arr
end if

end

