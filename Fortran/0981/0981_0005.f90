call sub(ii)
print *,"pass"
contains
subroutine sub(i)
optional :: i
!$omp parallel default(firstprivate)
!$omp do firstprivate(i)
do j=1,1
end do
!$omp enddo
!$omp endparallel
!$omp parallel default(firstprivate)
!$omp do firstprivate(i)
do j=1,1
end do
!$omp enddo
!$omp endparallel
!$omp parallel default(firstprivate)
!$omp do lastprivate(i)
do j=1,1
i=1
end do
!$omp enddo
!$omp endparallel

!$omp parallel default(shared)
!$omp do firstprivate(i)
do j=1,1
end do
!$omp enddo
!$omp endparallel
end subroutine
end

