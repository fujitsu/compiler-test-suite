ido1=1
ido2=2
!$omp parallel default(none)
!$omp dosimd 
do ido1=1,10
do ido2=1,10
end do
end do
!$omp enddosimd
!$omp dosimd 
do ido2=1,10
do ido1=1,10
end do
end do
!$omp enddosimd
!$omp end parallel 
if (ido1.ne.1 .or. ido2.ne.2) print *,ido1,ido2
print *,'pass'
end
