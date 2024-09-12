program test
      type ty
        integer :: x
      end type ty
      type,extends(ty) :: ty1
        integer :: y
      end type ty1
 
      type (ty), target :: tgt1
      type (ty), target :: t1(2)
      type (ty1), target :: tgt2
      class (ty), pointer :: p1, p2,res(:)
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
end program test

