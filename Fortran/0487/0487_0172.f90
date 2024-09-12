subroutine s1
type x
  integer,allocatable:: p(:)
  integer:: k
end type
type (x) :: v,vv=x( null() , 5)
v= x( null() , 5)
if (   (v%k/=5)) print *,102
if (   (vv%k/=5)) print *,202
end
call s1
print *,'pass'
end
