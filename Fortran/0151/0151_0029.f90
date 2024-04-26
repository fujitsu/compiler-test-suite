subroutine s1
integer omp_get_thread_num
integer,save:: a01,c01
!$omp threadprivate(a01)

a01=1
c01=1
!$omp parallel private(c01)
a01=omp_get_thread_num()+300
c01=11
block 
integer:: a11
a11=21
a11=omp_get_thread_num()+100
c01=omp_get_thread_num()+200
block
integer:: a21
integer ::omp_get_thread_num
a21=omp_get_thread_num()+1
if (a11/=omp_get_thread_num()+100) print *,101
if (a21/=omp_get_thread_num()+1) print *,102
if (a01/=omp_get_thread_num()+300) print *,103,a01
if (c01/=omp_get_thread_num()+200) print *,104
end block
!
a11=31
c01=omp_get_thread_num()+31
block
integer ::omp_get_thread_num
integer:: b21
b21=omp_get_thread_num()+2
if (c01/=omp_get_thread_num()+31) print *,114
if (a11/=31) print *,112
if (a01/=omp_get_thread_num()+300) print *,113,a01
if (b21/=omp_get_thread_num()+2) print *,111
end block
end block
!$omp end parallel
end
call s1
print *,'pass'
end
