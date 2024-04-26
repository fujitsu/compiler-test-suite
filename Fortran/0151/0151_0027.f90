subroutine s1
!$omp parallel 
block
integer:: a01
a01=1
!$omp parallel 
a01=11
block 
integer:: a11
a11=21
!$omp parallel 
a11=31
block
integer:: a21
integer ::omp_get_thread_num
a21=omp_get_thread_num()+1
if (a11/=31) print *,101
if (a21/=omp_get_thread_num()+1) print *,102
if (a01/=11) print *,103
end block
!$omp end parallel
!
!$omp parallel 
a11=31
block
integer ::omp_get_thread_num
integer:: b21
b21=omp_get_thread_num()+2
if (a11/=31) print *,112
if (a01/=11) print *,113
if (b21/=omp_get_thread_num()+2) print *,111
end block
!$omp end parallel
end block
!$omp end parallel
end block
!$omp end parallel
end
call s1
print *,'pass'
end
