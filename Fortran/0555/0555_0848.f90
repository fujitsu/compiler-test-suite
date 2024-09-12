module mod
  type base
	integer :: ii
	integer :: jj
  end type
 
  type,extends(base) :: deriv
	integer :: kk
  end type
 
  type new
	class(*),pointer :: cptr(:,:) => NULL()
  end type
 
contains
 function fun(d1,d2,d3)
   type(new) :: d1
   type(new) :: d2(5,5)
   type(new) :: d3(10,10,10)

   class(*),pointer :: cptr(:,:)

   type(base),target :: tgt1(7,8)
   type(deriv),target :: tgt2(10,10)
   type(base),target :: tgt3(5,5)

   d1 = new(tgt1)
   d2(1,1) = new(tgt2)
   d3(1,2,3) = new(tgt3)

   if(sizeof(d1%cptr(1,1)) .NE. 8) print*,"fail 4"
   if(sizeof(d2(1,1)%cptr(2,2)) .NE. 12) print*,"fail 5"
   if(sizeof(d3(1,2,3)%cptr(3,3)) .NE. 8) print*,"fail 6"
 
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
  use mod
  type(new) :: cptr_var1
  type(new) :: cptr_var2(5,5)
  type(new) :: cptr_var3(10,10,10)

  if(fun(cptr_var1,cptr_var2,cptr_var3) ==9) print*,'PASS'
end
