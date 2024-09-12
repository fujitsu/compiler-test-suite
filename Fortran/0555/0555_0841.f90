module mod1
  type base
	integer :: ii=0
	integer :: jj=0
  end type
 
  type,extends(base) :: deriv
	integer :: kk=0
  end type
 
  type new
	class(base),pointer :: cptr(:,:)
  end type
 
contains
 function fun(d1,d2,d3)
   type(new) :: d1
   type(new) :: d2(:,:)
   type(new) :: d3(:,:,:)

   class(base),pointer :: cptr(:,:)

   type(base),target :: tgt1(7,8)
   type(deriv),target :: tgt2(10,10)
   type(base),target :: tgt3(5,5)

   d1 = new(tgt1)
   d2(1,1) = new(tgt2)
   d3(1,2,3) = new(tgt3)

   if(sizeof(d1%cptr(1,1)) .NE. 8) print*,"fail 5"
   if(sizeof(d2(1,1)%cptr(2,2)) .NE. 12) print*,"fail 4"
   if(sizeof(d3(1,2,3)%cptr(3,3)) .NE. 8) print*,"fail 4"
 
   cptr=>d2(1,1)%cptr
   select type(cptr)
     type is(deriv)
        print*,"PASS d2"
     type is(base)
        print*,"FAIL d2"
   end select
   cptr=>d1%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d1"
     class is(base)
        print*,"PASS d1"
   end select
   cptr=>d3(1,2,3)%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d3"
     class is(base)
        print*,"PASS d3"
   end select

   fun=9
 end function
end module

program main
  use mod1
  class(new),pointer :: cptr_var1
  class(new),pointer :: cptr_var2(:,:)
  class(new),pointer :: cptr_var3(:,:,:)
  type(new),target :: cptr_tgt1
  type(new),target :: cptr_tgt2(5,7)
  type(new),target :: cptr_tgt3(10,5,10)
  cptr_var1 => cptr_tgt1 
  cptr_var2 => cptr_tgt2 
  cptr_var3 => cptr_tgt3 

  if(fun(cptr_var1,cptr_var2,cptr_var3) ==9) print*,'PASS'
end
