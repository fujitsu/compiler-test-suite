call sub()
print *,'pass'
end
module mod
type ty1
 integer  :: a
end type
type(ty1) :: str
type ty2
 integer  :: a,b
end type
type(ty2) :: stra
end

subroutine sub()
use mod
type(ty1) :: s
call eee(s)
end 
subroutine eee(s)
type ty1
sequence
 integer  :: a
end type
type(ty1) ::s
end
