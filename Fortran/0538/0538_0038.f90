call test01()
call test02()
print *,'pass'
end
subroutine test01()
ido1=1
ido2=2
!$omp task     default(none)
!$omp parallel default(none)
!$omp do 
do ido1=1,10
do ido2=1,10
end do
end do
!$omp enddo
!$omp do 
do ido2=1,10
do ido3=1,10
do ido1=1,10
end do
end do
end do
!$omp enddo
!$omp endparallel
!$omp endtask
if (ido1.ne.1) print *,'ng1:',ido1
if (ido2.ne.2) print *,'ng2:',ido2
end
subroutine test02()
ido1=1
ido2=2
!$omp task     default(none)
!$omp parallel default(none)
!$omp do
do ido1=1,10
do ido2=1,10
end do
end do
!$omp enddo
!$omp do
do ido2=1,10
do ido1=1,10
do ido3=1,10
end do
end do
end do
!$omp enddo
!$omp endparallel
!$omp endtask
if (ido1.ne.1) print *,'ng1:',ido1
if (ido2.ne.2) print *,'ng2:',ido2
end
