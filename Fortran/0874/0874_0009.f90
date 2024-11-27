type  ty
  integer :: ii
end type
type ,extends(ty) :: ty1
   integer :: jj
end type
type ,extends(ty1) :: ty2
   integer :: kk
end type

type(ty1),target:: obj2
class(*),allocatable::p

k=0
p=ufun()
select type(b=>p     )
type  is (ty2)
   if(b%jj .ne. 10)print*,"107"
 print*,"115"
type is (ty)                      
 print*,"105"
type  is (ty1)
   if(b%jj .ne. 10)print*,"106"
k=1
class default
print*,107
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
