type  ty
  integer :: ii
end type
type ,extends(ty) :: ty1
   integer :: jj=10
end type

type(ty1),target:: obj2

select type(b=>ufun())
type is (ty)                      
 print*,"105"
type is (ty1)
   if(b%jj .ne. 10)print*,"106"
class default
print*,107
end select

print*,"pass"
contains
function ufun()
class(*),pointer :: ufun
ufun=>obj2
end function
end
