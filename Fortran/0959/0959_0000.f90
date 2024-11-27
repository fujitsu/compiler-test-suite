module mod1
type ty
integer :: ii
contains
procedure :: prc
generic :: assignment(=) => prc
end type
contains
subroutine prc(a,b)
 type(ty) :: b
 class(ty) :: a
 a%ii = b%ii
 print *,"PRC"
END subroutine 
end module
end

