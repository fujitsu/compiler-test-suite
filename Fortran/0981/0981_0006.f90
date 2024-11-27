call test01()
call test02()
print *,"pass"
end
subroutine test01()
common /com/i,k
!$omp parallel default(shared)
!$omp parallel shared(/com/)
!$omp end parallel
do i=1,10
do j=1,10
end do
end do
!$omp end parallel
end

subroutine test02()
common /com/i,k
!$omp parallel default(firstprivate)
!$omp parallel shared(/com/)
!$omp end parallel
do i=1,10
do j=1,10
end do
end do
!$omp end parallel
end

