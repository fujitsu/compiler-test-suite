type  ty
  integer :: ii
end type
type ,extends(ty) :: ty1
   integer :: jj
end type
type ,extends(ty1) :: ty2
   integer :: kk
end type

type(ty2),target:: obj3
type(ty1),target:: obj2
type(ty),target:: obj1
integer,target:: obj
real,target:: obj4
character(3),target:: obj5
class(*),allocatable::p

do n=0,5
k=-1
p=             ufun(n)
select type(b=>p      )
type  is (ty2)
   if(b%kk .ne. 20)print*,"1073"
   if(b%jj .ne. 10)print*,"107"
   if(b%ii .ne. 1)print*,"1071"
k=3
type is (ty)                      
k=1
type  is (character(*)   )
if (len(b)/=3) print *,1008
k=5
type  is (real   )
k=4
type  is (integer)
k=0
type  is (ty1)
   if(b%jj .ne. 10)print*,"106"
   if(b%ii .ne. 1)print*,"1061"
k=2
end select
if (k/=n) print *,9001,k,n
end do

print*,"pass"
contains
function ufun(n)
class(*),pointer :: ufun
obj1%ii=1
obj2%ii=1
obj3%ii=1
obj2%jj=10
obj3%jj=10
obj3%kk=20
select case(n)
case(0)
ufun=>obj
case(1)
ufun=>obj1
case(2)
ufun=>obj2
case(3)
ufun=>obj3
case(4)
ufun=>obj4
case(5)
ufun=>obj5
end select
end function
end
