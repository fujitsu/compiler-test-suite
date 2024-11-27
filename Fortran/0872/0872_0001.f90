type  ty
  integer :: ii
end type
type ,extends(ty) :: ty1
   integer :: jj
end type

type(ty1),target:: obj2

k=0
select type(b=>ufun())
type is (ty)                      
 print*,"105"
type is (ty1)
   if(b%jj .ne. 10)print*,"106"
k=1
class default
print*,107
end select
if (k/=1) print *,99

print*,"pass"
contains
function ufun()
class(*),pointer :: ufun
ufun=>obj2
obj2%jj=10
end function
end
