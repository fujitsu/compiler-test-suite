complex :: cc(5) = (2,3)

!$omp threadprivate(cc)

!$omp task
  cc = (4,5)
  cc(1:5:2)%im = 7
!$omp end task
if(any(cc(1:5:2) .ne. (4,7)))print*,101
print*,"PASS"
end
