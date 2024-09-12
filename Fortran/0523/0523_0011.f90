program main
integer::i
i=add()
if(i==1) then
  print *,'pass'
else
  print *,'ng',i
endif
contains
function add()
integer::l
integer::h=0
!$omp declare simd(add)
!$omp ordered simd
do l=1,1
h=h+1
end do
!$omp end ordered
add=h
end function
end program
