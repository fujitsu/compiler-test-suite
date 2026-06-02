k=-1
do i=1,3
!$omp atomic capture
j=k;k=-1
!$omp end atomic

end do
print *,'pass'
end
