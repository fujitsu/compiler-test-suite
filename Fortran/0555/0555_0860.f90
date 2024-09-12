module mod
  type base
	integer :: ii
	integer :: jj
  end type
 
  type,extends(base) :: deriv
	integer :: kk
  end type
 
  type new
        integer :: mm
	class(base),pointer :: cptr(:,:)
        real :: nn
  end type
  class(new),pointer :: cptr_var1
  class(new),pointer :: cptr_var2(:,:)
  class(new),pointer :: cptr_var3(:,:,:)
 
contains
 function fun(d1,d2,d3)
   type(new),target :: d1
   type(new),target :: d2(5,*)
   type(new),target :: d3(10,10,*)
   integer :: i
   class(base),pointer :: cptr(:,:)

   type(base),target :: tgt1(7,8)
   type(deriv),target :: tgt2(10,10)
   type(base),target :: tgt3(5,5)

   d1 = new(4,tgt1,9.8)
   d2(1,1:5) = (/(new(10,tgt2,10.87),i=1,5)/)
   d3(1,2,1:10) = (/(new(32,tgt3,7.23),i=1,10)/)

   if(sizeof(d1%cptr(1,1)) .NE. 8) print*,"fail 5"
   if(sizeof(d2(1,1)%cptr(2,2)) .NE. 12) print*,"fail 4"
   if(sizeof(d3(1,2,3)%cptr(3,3)) .NE. 8) print*,"fail 4"
 
   cptr=>d2(1,5)%cptr
   select type(cptr)
     type is(deriv)
        print*,"PASS d2"
        print*,d2(1,1)%mm
        print*,d2(1,1)%nn
        cptr%ii = 11
        cptr%jj = 12
        cptr%kk = 13
     type is(base)
        print*,"FAIL d2"
   end select
   cptr=>d1%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d1"
     class is(base)
        print*,"PASS d1"
        print*,d1%mm
        print*,d1%nn
        cptr%ii = 14
        cptr%jj = 15
   end select
   cptr=>d3(1,2,10)%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d3"
     class is(base)
        print*,"PASS d3"
        print*,d3(1,2,3)%mm
        print*,d3(1,2,3)%nn
        cptr%ii = 16
        cptr%jj = 17
   end select

   cptr=>d2(1,5)%cptr
   select type(cptr)
     type is(deriv)
        print*,"PASS d2.1"
        if (cptr(10,10)%ii .NE. 11) print *,"FAIL cptr%ii"
        if (cptr(10,10)%jj .NE. 12) print *,"FAIL cptr%jj"
        if (cptr(10,10)%kk .NE. 13) print *,"FAIL cptr%kk"
     type is(base)
        print*,"FAIL d2.1"
   end select
   cptr=>d1%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d1.1"
     class is(base)
        print*,"PASS d1.1"
        if (cptr(7,8)%ii .NE. 14) print *,"FAIL cptr%ii"
        if (cptr(7,8)%jj .NE. 15) print *,"FAIL cptr%jj"
   end select
   cptr=>d3(1,2,10)%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d3.1"
     class is(base)
        print*,"PASS d3.1"
        if (cptr(5,5)%ii .NE. 16) print *,"FAIL cptr%ii"
        if (cptr(5,5)%jj .NE. 17) print *,"FAIL cptr%jj"
   end select

   fun=9
 end function
end module

program main
  use mod
  type(new),target :: cptr_tgt1
  type(new),target :: cptr_tgt2(5,5)
  type(new),target :: cptr_tgt3(10,10,10)
  cptr_var1 => cptr_tgt1 
  cptr_var2 => cptr_tgt2 
  cptr_var3 => cptr_tgt3 

  if(fun(cptr_var1,cptr_var2,cptr_var3)==9)print*,'PASS' 
end
