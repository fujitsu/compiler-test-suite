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
!$omp master
!$omp master
do ido2=1,10
do ido1=1,10
end do
end do
!$omp endmaster
!$omp endmaster
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
!$omp sections
do ido3=1,10
do ido4=1,10
!$omp critical
do ido2=1,10
do ido1=1,10
end do
end do
do ido5=1,10
do ido6=1,10
end do
end do
if (1.eq.2) print *,((1,ido7=1,1),ido8=1,1)
!$omp endcritical
end do
end do
!$omp endsections
!$omp endparallel
if (ido1.ne.1) print *,'ng1:',ido1
if (ido2.ne.2) print *,'ng2:',ido2
end
