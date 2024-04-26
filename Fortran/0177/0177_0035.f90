module m1
 type x
  integer  :: v
 end type
contains
subroutine s1(v)
type(x),pointer:: v
select case(v%v)
  case (1  )
end select
end subroutine
end

use m1
type(x),pointer:: v
allocate(v)
v%v=1    
call s1(v)
print *,'pass'
end
