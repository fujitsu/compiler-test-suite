complex :: cc = (2,3)

!$omp threadprivate(cc)

!$omp task
  cc = (4,5)
  cc%im = 7
!$omp end task
if(cc .ne. (4,7))print*,101
print*,"PASS"
end
