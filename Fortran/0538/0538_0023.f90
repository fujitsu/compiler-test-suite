ido1=1
ido2=2
!$omp parallel
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
if (ido1.ne.1 .or. ido2.ne.2) print *,ido1,ido2
print *,'pass'
end
