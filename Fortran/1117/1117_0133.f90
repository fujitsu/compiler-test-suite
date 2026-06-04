call test01()
call test02()
call test03()
print *,'pass'
end
subroutine test04()
common /com/ i,k
!$omp parallel default(private) shared(k,i)
!$omp do private(i)
do ii=1,10
i=1
end do
!$omp end do
!$omp do private(/com/)
do ii=1,10
end do
!$omp end do
!$omp do
do ii=1,10
end do
!$omp end do
!$omp do 
do ii=1,10
i=1
end do
!$omp end do
!$omp end parallel
!$omp parallel default(private) shared(k,i)
!$omp do lastprivate(/com/)
do ii=1,10
end do
!$omp end do
!$omp end parallel
end

subroutine test03()
common /com/ i,k
!$omp parallel default(private)
!$omp do lastprivate(/com/)
do ii=1,10
end do
!$omp end do
!$omp do lastprivate(/com/)
do ii=1,10
i=1
end do
!$omp end do
!$omp end parallel
!$omp parallel default(private) private(i)
!$omp do 
do ii=1,10
i=1
end do
!$omp end do
!$omp end parallel
end

subroutine test02()
common /com/ i,k
!$omp parallel default(private) shared(k,i)
!$omp do lastprivate(/com/)
do ii=1,10
end do
!$omp end do
i=1
!$omp end parallel
end
subroutine test01()
common /com/ i,k
!$omp parallel default(private) shared(/com/)
!$omp do lastprivate(/com/)
do ii=1,10
end do
!$omp end do
i=1
!$omp end parallel
end
