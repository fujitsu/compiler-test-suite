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
 import ty
 class (ty), pointer :: p1, p2(:)
end subroutine
end interface
      class (ty), pointer :: act1,act2(:)
      call sub1(act1,act2)
end program test

subroutine sub1(p1,p2)
use selmod 
      type (ty), target :: tgt1
      class(ty), allocatable :: t1(:)
      type (ty1), target :: tgt2(3)
      class (ty), pointer :: p1, p2(:),res(:)
      allocate(t1(2))
      tgt1%x = 1
      t1%x = 4
      t1(2)%x = 5
      tgt2%x = 6
      tgt2(3)%x = 7
      p1 => tgt1
      p2 => tgt2
      select type (p2)
       type is(ty1)
        res=>fun2(p2,p1,t1)
        if(t1(1)%x==4 .and. t1(2)%x==6 .and. p2(1)%x==6 .and. p2(2)%x==4 .and. res(1)%x==4 .and. res(2)%x==6 ) then 
          print*,'pass'
        else
          print*,111
        endif
      end select

contains
function fun2(dum1,dum2,dum3)
 type(ty1)::dum1(:)
 class(ty),pointer::fun2(:),dum2
 type(ty),target::dum3(2)

 select type(dum2)
  type is (ty)
   dum1(2)%x=dum3(1)%x
   dum3(2)%x=dum1(1)%x
   fun2=>dum3
 end select
end function
end subroutine
