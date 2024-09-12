use iso_c_binding,only:c_int, c_long , c_float
interface
  subroutine c_sub(d,n) bind(c)
  import:: c_int
  type(*):: d
  integer(c_int),value:: n
  end subroutine
end interface
integer(c_int) :: a=10
integer(c_long):: b=11
real   (c_float)::c=12.0
call c_sub(a,1)
call c_sub(b,2)
call c_sub(c,3)
print *,'pass'
end
  subroutine c_sub(d,n) bind(c)
use iso_c_binding,only:c_int, c_long , c_float
  type(*):: d
  integer(c_int),value:: n
  end subroutine
