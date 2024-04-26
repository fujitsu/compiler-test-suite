subroutine s1
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
integer::y=1
integer::z=1
integer::zz=202
block
integer::yy=2
integer::zz=2
!$omp parallel private(z,zz)
n1=omp_get_thread_num()+1
n2=omp_get_thread_num()+2
if (y/=1) print *,501
if (yy/=2) print *,502
z=101
zz=102
if (z/=101) print *,511
if (zz/=102) print *,512
!$omp end parallel
if (z/=1) print *,521
if (zz/=2) print *,522
end block
if (z/=1) print *,531
if (zz/=202) print *,532
end
subroutine s2
integer omp_get_thread_num
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
block
!$omp parallel
if (n1/=omp_get_thread_num()+1) print *,101
if (n2/=omp_get_thread_num()+2) print *,102
!$omp end parallel
end block
end
call s1
call s2
print *,'pass'
end
