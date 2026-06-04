call test1()
print *,'pass' 
end

subroutine test1()
!$omp parallel default(private) shared(j)
!$omp do lastprivate(j)
do i=1,1
j=10
end do
!$omp end do
!$omp do firstprivate(j)
do i=1,1
end do
!$omp end do
!$omp master
i=1
!$omp end master
!$omp end parallel
end

subroutine test2()
!$omp parallel default(private) shared(j)
!$omp do lastprivate(j) 
do i=1,1
j=10
k=1
end do
!$omp end do
!$omp do firstprivate(j)
do i=1,1
end do
!$omp end do

!$omp master
i=1
!$omp end master
k=1

!$omp end parallel
end

subroutine test03()
!$omp parallel default(private) shared(j)
!$omp do private(j)
do i=1,10
end do
!$omp enddo
!$omp do 
do i=1,10
j=1
end do
!$omp enddo
!$omp endparallel
end

subroutine no_err01()
!$omp parallel default(private)
!$omp do
do i=1,10
end do
!$omp enddo
!$omp do
do i=1,10
j=1
end do
!$omp enddo
!$omp endparallel
end
subroutine no_err02()
!$omp parallel default(private) shared(j)
!$omp do
do i=1,10
end do
!$omp enddo
!$omp do private(j)
do i=1,10
j=1
end do
!$omp enddo
!$omp endparallel
end
