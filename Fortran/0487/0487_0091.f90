subroutine s1
type x
 integer::x1
end type
type(x),pointer::a(:)
allocate(a(3))
a(1)%x1=1
a(2)%x1=1
a(3)%x1=1
!$omp parallel firstprivate(a)
write(1,*)a(1)%x1,a(2)%x1,a(3)%x1
!$omp end parallel
end
call omp_set_num_threads(2)
call s1
call chk
print *,'pass'
end
subroutine chk
real x(3)
rewind 1
read(1,*)x
if (any(abs(x-1)>0.001)) print *,101
read(1,*)x
if (any(abs(x-1)>0.001)) print *,103
read(1,*,end=2)x
print *,102
2 continue
end
