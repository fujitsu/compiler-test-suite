type b
type(t),pointer  :: i
end type
type r
end type
type t
class(r) ,pointer :: ip
end type
type(b) :: ss(1)
call sub(ss)
print *,'pass'
contains
subroutine sub(ii)
type(b) :: ii(1)
end subroutine
end
