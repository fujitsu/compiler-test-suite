subroutine s1
!$omp parallel 
do k=1,10
   if (k==3) exit
end do
if (k/=3) print *,101
!$omp end parallel
end
subroutine s2
kk=1
!$omp parallel
do k=1,10
   if (k==3) exit
   kk=k
end do
!$omp end parallel 
if (kk/=2) print *,102
end
subroutine s3
kk=1
!$omp critical 
do k=1,10
   if (k==3) exit
   kk=k
end do
!$omp end critical 
if (kk/=2) print *,103
end
subroutine s4
kk=1
!$omp task shared(kk)
do k=1,10
   if (k==3) exit
   kk=k
end do
!$omp end task 
if (kk/=2) print *,104,kk
!$omp taskwait
end
call omp_set_num_threads(1)
call s1
call s2
call s3
call s4
print *,'pass'
end
