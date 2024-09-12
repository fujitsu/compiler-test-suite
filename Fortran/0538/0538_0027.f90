ido1=1
ido2=2
!$omp parallel shared(ido1,ido2)
!$omp do
do ido1=1,10
do ido2=1,10
end do
end do
!$omp enddo
do ido2=1,10
do ido1=1,10
end do
end do
!$omp endparallel
print *,'pass'
end
