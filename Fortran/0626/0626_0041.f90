subroutine s1
type bb
  integer::x1
end type
type t
class(bb) ,pointer :: ip=>null()
end type
type b
type(t)  :: i
end type
type(b) :: ss
ss=f()
contains
function   f() result(r)
type(b) :: r
end function 
end
call s1
print *,'pass'
end
