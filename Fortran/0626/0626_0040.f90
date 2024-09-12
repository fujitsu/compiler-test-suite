subroutine s1
type t
class(*) ,pointer :: ip=>null()
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
