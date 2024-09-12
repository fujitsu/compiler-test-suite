call test02()
print *,'pass'
end
subroutine test02()
ido1=1
ido2=2
ido3=3
!$omp parallel default(none)
!$omp  simd collapse(2)
do ido1=1,10
do ido2=1,10
end do
end do
!$omp  simd collapse(2)
do ido2=1,10
do ido1=1,10
end do
end do
!$omp endparallel
if (ido3.ne.3) print *,'ng3:',ido3
end
