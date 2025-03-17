!
!
!

subroutine sub()
  integer ,pointer :: a
  integer , target :: c
  c=50
  a => c
  a=100
!$omp task
  if (a /= 100) then
     print *,"NG a=",a
  endif
  a = 10
!$omp end task
!$omp taskwait
end

call sub()
print *,"pass"
end
