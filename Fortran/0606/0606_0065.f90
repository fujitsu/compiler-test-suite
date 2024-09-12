module mod1
type ty
 complex :: ii = (0.0,0.0)
 contains
  procedure :: eprc
   generic :: operator(.so.) => eprc
end type

type,extends(ty) :: ty2
 contains
  procedure :: eprc_ty2
   generic :: operator(.so.) => eprc_ty2
end type
contains

function eprc(a,b)
 type(ty),intent(in) :: b
 class(ty),INTENT(IN) :: a
 complex :: eprc

 eprc = a%ii + b%ii
END function

function eprc_ty2(a,b)
 type(ty2),intent(in) :: b
 class(ty2),INTENT(IN) :: a
 complex :: eprc_ty2

 eprc_ty2 = (a%ii + b%ii) + (0.2,0.3)
END function

function fun1()
 integer  :: fun1
 complex  :: res,res2

 type tc1
  class(ty),allocatable :: o1,o2
  class(ty2),allocatable :: o3,o4
 end type

 type tc2
  type(tc1) :: oc2
 end type

 type tc3
  class(tc2),allocatable :: alc3(:)
 end type

 type(tc3) :: oa3

 allocate(oa3%alc3(2))

 allocate(oa3%alc3(2)%oc2%o1,source = ty((2.1,3.2)))
 allocate(oa3%alc3(2)%oc2%o2,source = ty((0.4,0.6)))
 allocate(oa3%alc3(2)%oc2%o3,source = ty2((2.3,2.3)))
 allocate(oa3%alc3(2)%oc2%o4,source = ty2((22,43)))

 res  =  (0,0)
 res2 =  (0,0)

 res = oa3%alc3(2)%oc2%o1 .so. oa3%alc3(2)%oc2%o2
 res2 = oa3%alc3(2)%oc2%o3 .so. oa3%alc3(2)%oc2%o4

 if((int(res) .NE.2 ) .or. (int(res2) .NE. 24)) then
  print*,"fail",res,res2
  fun1 = 0
 else
  fun1 = 20
 endif
end function
end module

use mod1
integer :: xx=0
xx = fun1()
if(xx==20) print*,'pass'
end

