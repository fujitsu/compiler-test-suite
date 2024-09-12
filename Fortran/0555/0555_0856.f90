module mod
  type base
	integer :: ii
	integer :: jj
  end type
 
  type,extends(base) :: deriv
	integer :: kk
  end type
 
  type new
	class(base),pointer :: cptr(:,:)
  end type
 
contains
 function fun(d1,d2,d3)
   type(new) :: d1(:)
   type(new) :: d2(:,:)
   type(new) :: d3(:,:,:)
   integer :: i,j
   class(base),pointer :: cptr(:,:)

   type(base),target :: tgt1(7,8)
   type(deriv),target :: tgt2(10,10)
   type(base),target :: tgt3(5,5)

   d1 = (/(new(tgt1),i=1,5)/)
   d2(1,:) = (/((new(tgt2),i=1,3),j=1,2)/)
   d3(:,10,10) = (/((new(tgt3),i=1,5),j=1,2)/)

   if(sizeof(d1(1)%cptr(1,1)) .NE. 8) print*,"fail 4"
   if(sizeof(d2(1,1)%cptr(10,10)) .NE. 12) print*,"fail 8"
   if(sizeof(d3(1,10,10)%cptr(3,3)) .NE. 8) print*,"fail 12"
 
   cptr=>d2(1,1)%cptr
   select type(cptr)
     type is(deriv)
        print*,"PASS d2"
     type is(base)
        print*,"FAIL d2"
   end select
   cptr=>d1(1)%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d1"
     class is(base)
        print*,"PASS d1"
   end select
   cptr=>d3(3,10,10)%cptr
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
  type(new) :: cptr_var1(5)
  type(new) :: cptr_var2(5,6)
  type(new) :: cptr_var3(10,10,10)

  if(fun(cptr_var1,cptr_var2,cptr_var3) ==9) print*,'PASS'
end
