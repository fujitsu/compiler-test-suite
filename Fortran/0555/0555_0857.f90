module mod
  type base
	integer :: ii
	integer :: jj
  end type
 
  type,extends(base) :: deriv
	integer :: kk
  end type
 
  type new
	class(base),pointer :: cptr(:,:) => NULL()
  end type
 
  class(base),pointer :: cptr_var1(:,:)
  real,pointer :: cptr_var2(:,:,:)
  class(base),pointer :: cptr_var3(:,:)
  integer,pointer :: cptr_var4(:,:,:,:)
  class(base),pointer :: cptr_var5(:,:)

contains
 function fun(tgt1,tgt2,tgt3,tgt4,tgt5)
   type(new) :: d1
   type(new) :: d2(5,5)
   type(new) :: d3(10,10,10)
   integer :: i,j

   class(base),pointer :: cptr(:,:)

   class(base),target :: tgt1(:,:)
   real :: tgt2(:,:,:)
   class(base),target :: tgt3(:,:)
   integer :: tgt4(:,:,:,:)
   class(base),target :: tgt5(:,:)


   d1 = new(tgt1)
   d2(:,1) = (/(new(tgt3),i=1,5)/)
   d3(1,2,:) = (/((new(tgt5),i=1,2),j=1,5)/)

   if(sizeof(tgt1(1,1)) .NE. 8) print*,"fail 1"
   if(sizeof(tgt2(9,7,3)) .NE. 4) print*,"fail 2"
   if(sizeof(tgt3(7,2)) .NE. 12) print*,"fail 3"
   if(sizeof(tgt4(1,2,3,4)) .NE. 4) print*,"fail 4"
   if(sizeof(tgt5(5,5)) .NE. 8) print*,"fail 5"
 
   cptr=>d1%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d1"
     class is(base)
        print*,"PASS d1"
        tgt2(1,7,2) = 5.87
        tgt4(9,2,1,5) = 10
   end select
   cptr=>d2(1,1)%cptr
   select type(cptr)
     type is(deriv)
        print*,"PASS d2"
        if(tgt2(1,7,2) .NE. 5.87) print *,"fail tgt2"
     type is(base)
        print*,"FAIL d2"
   end select
   cptr=>d3(1,2,3)%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d3"
     class is(base)
        print*,"PASS d3"
        if(tgt4(9,2,1,5) .NE. 10) print *,"fail tgt4"
   end select

   fun=9
 end function
end module

program main
  use mod

   type(base),target :: tgt1(7,8)
   real,target :: tgt2(10,9,4)
   type(deriv),target :: tgt3(10,10)
   integer,target :: tgt4(10,3,6,9)
   type(base),target :: tgt5(5,5)

   cptr_var1 => tgt1
   cptr_var2 => tgt2
   cptr_var3 => tgt3
   cptr_var4 => tgt4
   cptr_var5 => tgt5
  
   if(fun(cptr_var1,cptr_var2,cptr_var3,cptr_var4,cptr_var5) ==9) print*,'PASS'
end
