program main
implicit none
integer::x=1
integer::y=2
integer::z=0
!$omp ordered simd
        x=y+z
!$omp end ordered
if(x==2) then
  print *, 'pass'
else
  print *, 'x=',x
endif
end
