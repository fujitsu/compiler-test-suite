program test
 type ty
  integer :: x
 end type ty
 type,extends(ty) :: ty1
  integer :: y
 end type ty1

 type (ty), target :: tgt1
 type (ty1), target :: tgt2
 class (ty), pointer :: p2
 class (*), pointer :: res

 tgt1%x = 2
 tgt2%y = 6
 p2 => tgt2
 select type (p2)
  type is(ty1)
   res=>fun2(tgt1,tgt2)
    select type (res)
     type is (ty1)
       if( res%y .EQ. 1 ) then 
         print*,'PASS'
       else
         print*,'FAIL'
       endif
    end select
 end select

contains
RECURSIVE class(*) function fun2(dum1,dum2)
 type(ty),target::dum1
 pointer::fun2
 type(ty1),target::dum2

 dum2%y=dum1%x
 if( dum2%y .NE. 1) then
  dum2%y =1
  fun2 => dum2
 else
  fun2=>dum2
 endif
end function
end program test

