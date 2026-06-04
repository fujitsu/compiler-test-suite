subroutine sub(a)
integer :: a
!$omp task
 a=1
!$omp end task
end
integer a
call sub(a)
print *,'pass'
end
