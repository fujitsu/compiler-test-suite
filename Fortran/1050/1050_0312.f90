!
!
!

integer, dimension(10) :: vvv
integer, dimension(20) :: aaa
pointer (ptr, vvv)
ptr = loc(aaa)
aaa(1)=10
!$omp task
if (vvv(1)/=10) then
   print *,"NG vvv=",vvv
end if
vvv(1) = 1
!$omp end task
print *,"pass"
end
