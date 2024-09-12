type t
class(*) ,pointer :: ip=>null()
end type
type b
type(t)  :: i
end type
type(b) :: ss(1)
call sub(ss)
print *,'pass'
contains
subroutine sub(ii)
type(b) :: ii(1)
end subroutine
end
