subroutine s1
integer :: iii1,k
k=100
!$omp parallel
write(1,*)1
!$omp parallel
write(1,*)2
!$omp task private(iii1) shared(k)
write(1,*)3
  iii1 = k
  if ( iii1 .ne. 300 ) iii1 = 400
!$omp end task
!$omp end parallel
!$omp end parallel
end
call s1
print *,'pass'
end
