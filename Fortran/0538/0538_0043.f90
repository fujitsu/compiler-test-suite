call test01()
call test02()
print *,'pass'
end
subroutine test01()
ido1=1
ido2=2
ido3=3
!$omp task     default(none)
!$omp parallel default(none)
!$omp simd
do ido1=1,10
do ido2=1,10
end do
end do
!$omp endsimd
do ido2=1,10
do ido1=1,10
end do
end do
!$omp endparallel
!$omp endtask
if (ido1.ne.1) print *,'ng1:',ido1
if (ido2.ne.2) print *,'ng2:',ido2
if (ido3.ne.3) print *,'ng3:',ido3
end
subroutine test02()
ido1=1
ido2=2
ido3=3
!$omp task     default(none)
!$omp parallel default(none)
do ido1=1,10
do ido2=1,10
end do
end do
!$omp simd
do ido2=1,10
do ido1=1,10
end do
end do
!$omp endsimd
!$omp endparallel
!$omp endtask
if (ido1.ne.1) print *,'ng1:',ido1
if (ido2.ne.2) print *,'ng2:',ido2
if (ido3.ne.3) print *,'ng3:',ido3
end