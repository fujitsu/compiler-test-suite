call test01()
call test02()
print *,"pass"
end

subroutine test01()
common /com/i,k
!$omp parallel default(shared) firstprivate(i)
!$omp parallel shared(/com/)
!$omp end parallel
do i=1,10
do j=1,10
end do
end do
!$omp end parallel
end

subroutine test04()
common /com/i,k
!$omp parallel firstprivate(j) reduction(+: i)
!$omp parallel shared(/com/)
!$omp end parallel
do i=1,10
do j=1,10
end do
end do
!$omp end parallel
end

subroutine test03()
common /com/i,k
!$omp parallel default(firstprivate) reduction(+: i)
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
!$omp parallel default(firstprivate) private(i)
!$omp parallel shared(/com/)
!$omp end parallel
do i=1,10
do j=1,10
end do
end do
!$omp end parallel
end

