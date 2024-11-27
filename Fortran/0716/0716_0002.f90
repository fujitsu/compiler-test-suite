module mod
integer ,pointer :: p
integer ,target,protected  :: t
end

use mod
type ty1
 integer ,pointer :: pp
end type
type(ty1) :: str
p=>t
str=ty1(t)
end
