MODULE selmod

type ty
  integer :: x=1
end type ty

type,extends(ty) :: ty1
  integer :: y=1
end type ty1

END MODULE

program test
use selmod
interface
  subroutine sub1(p1,p2)
    use selmod
    class (ty), POINTER :: p1
    class(*),POINTER::p2(:)
  end subroutine
end interface
 
class(ty),POINTER :: act1
class(*),POINTER:: act2(:)
type(ty1),TARGET::tar_ty(3)
ALLOCATE(ty::act1)
act1%x=3
tar_ty%y=4
act2=>tar_ty
call sub1(act1,act2)
end program test

subroutine sub1(p1,p2)
  use selmod
  class (ty), POINTER :: p1
  class(*),POINTER::p2(:)
  class (ty), POINTER :: res
  class(ty), ALLOCATABLE :: t1(:)
  allocate(t1(2))
  t1%x = 4
  select type (p2)
   type is(ty1)
    res=>fun2(p2,p1,t1)
    if(res%x /=3) then
      print*,110
    else
      print*,'pass'
    endif
  end select
contains
function fun2(dum1,dum2,dum3)
 type(ty1)::dum1(2)
 class(ty)::dum2
 class(ty),allocatable::dum3(:)
 class(ty),pointer::fun2
 type(ty),TARGET,save::tar
 tar%x=3
 if(dum1(2)%y /=4) then
   print*,111
 endif
 if(dum2%x /=3) then
   print*,112
 endif
  if(dum3(1)%x /=4) then
    print*,113
 endif
 fun2=>tar
end function
end subroutine
