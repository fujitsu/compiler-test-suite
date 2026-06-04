ido1=1
ido2=2
ido3=3
ido4=4
!$omp parallel default(none) shared(ido1,ido2,ido3)
!$omp simd collapse(3)
do ido3=1,10
do ido2=1,10
do ido1=1,10
end do
end do
end do
!$omp end simd

!$omp simd collapse(3)
do ido1=1,10
do ido2=1,10
do ido3=1,10
end do
end do
end do
!$omp end simd
!$omp endparallel
if (ido4.ne.4) print *,'1-ng4:',ido4
print *,'pass'
end
