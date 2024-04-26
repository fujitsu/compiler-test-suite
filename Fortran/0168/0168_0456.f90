 subroutine s1
 integer :: iand 

k=0
!$omp parallel reduction(iand : k)
k=k-1
!$omp end parallel
write(1,*)k
end
 subroutine s2
 real    :: iand 

k=0
!$omp parallel reduction(iand : k)
k=k-1
!$omp end parallel
write(1,*)k
end
 subroutine s3
 real    :: iand 

k=0
k=k-1
k=iand(k,k)
write(1,*)k
end
 subroutine s4
 real    :: iand 
 intrinsic iand

k=0
k=k-1
k=iand(k,k)
write(1,*)k
end
call s1
call s2
call s3
call s4
print *,'pass'
end
