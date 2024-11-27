module mod1
type ty
integer :: ii
contains
procedure :: prc
end type
generic :: operator(.plus.) => prc
contains
function prc(a,b)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 type(ty) :: prc
 prc%ii = a%ii + b
 print *,"PRC"
END function
end module
end
