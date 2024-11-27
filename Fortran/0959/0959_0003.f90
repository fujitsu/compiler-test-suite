module mod1
type ty
integer :: ii
contains
procedure :: prc
generic :: operator(.plus.) => prc
end type
contains
function prc(a,b)
 integer :: b
 class(ty) :: a
 type(ty) :: prc
 prc%ii = a%ii + b
 print *,"PRC"
END function
end module
end
