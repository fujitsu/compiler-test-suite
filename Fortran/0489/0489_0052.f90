subroutine s1
type x
  integer,pointer:: p(:)
  integer:: k
end type
integer,target:: t(3)=[1,2,3]
type (x) :: v
v= x( t(::2) , 5)
if (any(v%p/=[1,3])) print *,101
if (   (v%k/=5)) print *,102
end
call s1
print *,'pass'
end
