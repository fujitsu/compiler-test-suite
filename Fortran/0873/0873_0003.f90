type  ty
  integer :: ii
end type
type ,extends(ty) :: ty1
   integer :: jj
end type

type(ty1),target:: obj2

k=0
select type(b=>ufun())
type is (integer)                      
 print*,"105"
type  is (ty1)
   if(b%jj .ne. 10)print*,"106"
k=1
end select
if (k/=1) print *,9001

print*,"pass"
contains
function ufun()
class(*),pointer :: ufun
obj2%jj=10
ufun=>obj2
end function
end