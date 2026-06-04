program main
interface
subroutine foo(k)
volatile k
end subroutine
end interface
call foo(1)
end

subroutine foo(k)
volatile k
!$omp critical (test)
!$omp parallel do
do j=1,2
!$omp critical
!$omp parallel do
do i=1,2
  call sub(j)
enddo
!$omp end parallel do
!$omp end critical
call sub(j)
end do
!$omp end parallel do
!$omp end critical (test)
print *,'PASS'
end 

subroutine sub(j)
end 
