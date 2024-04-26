INTEGER :: K,L,M,N,O,arr(5,6,3,7,11)
arr=0
do concurrent(K=1:5)
  do concurrent(L=4:6)
    do concurrent (M=1:3)
      do concurrent(N=4:7)
        do concurrent(O=8:11)
          arr(K,L,M,N,O)=K+L+M+N+O
        end do
      end do
    end do
  end do
end do
if(arr(5,4,3,5,8) .eq. 25) then
 Print *,"PASS"
else
 Print *,"FAIL ",arr
end if

end
