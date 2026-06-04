integer a(10)
call test01(a)
print *,'pass'
end

subroutine test01(a)
integer a(*)
!$omp parallel default(private)
!$omp do
do i=1,10
end do
!$omp end do
!$omp end parallel
end
