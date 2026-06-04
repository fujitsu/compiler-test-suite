subroutine s1
integer,pointer::p
type x
 integer:: d
 integer,allocatable:: a
 integer,pointer    :: z
end type
type(x)::v
allocate(p,v%a,v%z)
p=1
v%a=1
v%z=1
p=p+1
v%a=v%a+1
v%z=v%z+1
if (p/=2) print *,201
if (v%a/=2) print *,202
if (v%z/=2) print *,203
!$omp parallel private(v,p)
!$omp end parallel
end
call s1
print *,'pass'
end
