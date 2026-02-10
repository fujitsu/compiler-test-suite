call test01()
print *,"pass"
end

subroutine test01()
common /com01/i,j
i=1
!$omp parallel
i=1
!$omp do private(i)
do i=1,10
end do
!$omp enddo
!$omp end parallel
!!if (i.ne.1) print *,"fail1"

i=1
!$omp parallel
i=1
!$omp do private(i)
do i=1,10
end do
!$omp enddo
if (i.ne.1) print *,"fail2"
!$omp end parallel
if (i.ne.1) print *,"fail3"

i=1
!$omp parallel
!$omp do lastprivate(i)
do i=1,10
end do
!$omp enddo
if (i.ne.11) print *,"fail4",i
!$omp end parallel
if (i.ne.11) print *,"fail5",i

i=33
!$omp parallel private(i)
i=1
!$omp do
do i=1,10
end do
!$omp enddo
!$omp end parallel
if (i.ne.33) print *,"fail6"

i=33
!$omp parallel firstprivate(i)
i=1
!$omp do
do i=1,10
end do
!$omp enddo
!$omp end parallel
if (i.ne.33) print *,"fail7"

i=10
!$omp parallel shared(i)
!$omp do
do i=1,i
end do
!$omp enddo
if (i.ne.10) print *,"fail8"
!$omp end parallel
if (i.ne.10) print *,"fail9"

i=10
!$omp parallel shared(i)
!$omp do lastprivate(i)
do i=1,10
end do
!$omp enddo
if (i.ne.11) print *,"faila"
!$omp end parallel
if (i.ne.11) print *,"failb"

i=10
!$omp parallel reduction(max:i)
i=11
!$omp do
do i=1,10
end do
!$omp enddo
!$omp end parallel
if (i.ne.11) print *,"failc"

end
