call test1()
call test2()
print *,'pass'
end
subroutine test1()
ido1=1
ido2=2
!$omp parallel default(none)
!$omp do 
do ido1=1,10
do ido2=1,10
end do
end do
!$omp enddo
!$omp paralleldo 
do ido2=1,10
do ido1=1,10
end do
end do
!$omp endparalleldo
!$omp endparallel
if (ido1.ne.1) print *,'1-ng1:',ido1
if (ido2.ne.2) print *,'1-ng2:',ido2
end
subroutine test2()
ido1=1
ido2=2
!$omp parallel default(none)
!$omp do 
do ido1=1,10
do ido2=1,10
end do
end do
!$omp enddo
!$omp parallel
do ido2=1,10
do ido1=1,10
end do
end do
!$omp endparallel
!$omp endparallel
if (ido1.ne.1) print *,'ng1:',ido1
if (ido2.ne.2) print *,'ng2:',ido2
end
