 subroutine s1
 integer,allocatable:: k1(:),k2(:)
allocate ( k1(2),k2(2))
k1=0
k2=0
!$omp parallel reduction(+: k1,k2)
k1=k1+2
k2=k2+3
!$omp end parallel
write(1,*)k1,k2
end
call s1
print *,'pass'
end
