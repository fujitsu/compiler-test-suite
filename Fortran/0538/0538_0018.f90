ido1=1
ido2=2
!$omp parallel default(none)
!$omp do collapse(3)
do ido1=1,10
do ido2=1,10
do ido3=1,10
end do
end do
end do
!$omp enddo
!$omp do 
do ido2=1,10
do ido1=1,10
end do
end do
!$omp enddo
!$omp endparallel 
print *,'pass'
end
