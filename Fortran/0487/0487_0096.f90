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
a(:)%x1=2
if (any(abs(a(:)%x1-2)>0.001)) print *,301
!$omp end parallel
if (any(abs(a%x1-2)>0.001)) print *,311
end
call s1
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
