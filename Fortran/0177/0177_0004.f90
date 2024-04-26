module m1
 type x
   logical:: p
   integer:: x1
 end type
contains
subroutine s1(v,k)
type (x),pointer:: v
if (.not.v%p) print *,301
select case(v%p)
  case (.true.)
    k=1
  case default
    k=4
end select
end subroutine
end

use m1
type(x),pointer:: v
allocate(v)
v%p=.true.
call s1(v,k)
if (k/=1) print *,101,k
print *,'pass'
end
