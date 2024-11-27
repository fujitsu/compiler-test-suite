module mod
type ty1
 integer ,pointer :: ip
end type
type(ty1) ,protected :: str
contains
subroutine subb()
str%ip=>str%ip
str=ty1(str%ip)
end subroutine
end

use mod
type(ty1) :: stra
stra%ip=>str%ip
print *,"pass"
end

