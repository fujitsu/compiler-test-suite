module mod1
      type ty
        integer :: x=0
      end type ty
      type,extends(ty) :: ty1
        integer :: y=0
      end type ty1
end module

program test
      use mod1 
      interface
      subroutine sub1(p1,p2)
      import ty
      class (ty), pointer :: p1, p2
      end subroutine
      end interface 
      class (ty), pointer :: act1,act2

      call sub1(act1,act2)
end program test

subroutine sub1(p1,p2)
      use mod1 
      type (ty), target :: tgt1
      class(ty), allocatable :: t1(:)
      type (ty1), target :: tgt2
      class (ty), pointer :: p1, p2,res(:)
      allocate(t1(2))
      tgt1%x = 1
      t1%x = 1
      tgt2%x = 2
      tgt2%y = 3
      p1 => tgt1
      p2 => tgt2
      select type (p2)
       type is(ty1)
        res=>fun2(p2,p1,t1)
        if(p2%x == 1) then 
          print*,'pass'
        else
          print*,111
        endif
      end select

contains
function fun2(dum1,dum2,dum3)
 type(ty1)::dum1
 class(ty),pointer::fun2(:),dum2
 type(ty),target::dum3(2)

 select type(dum2)
  type is (ty)
   dum1%x=dum3(1)%x
   dum3%x=dum1%x
   fun2=>dum3
 end select
end function
end subroutine
