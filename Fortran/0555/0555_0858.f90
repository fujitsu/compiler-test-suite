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
	class(base),pointer :: cptr(:,:) => NULL()
        real :: nn
  end type
  class(new),pointer :: cptr_var1
  class(new),pointer :: cptr_var2(:,:)
  class(new),pointer :: cptr_var3(:,:,:)
 
contains
 function fun(d1,d2,d3)
   type(new),target :: d1
   type(new),target :: d2(:,:)
   type(new),target :: d3(:,:,:)
   integer :: i,j

   class(base),pointer :: cptr(:,:)

   type(base),target :: tgt1(7,8)
   type(deriv),target :: tgt2(10,10)
   type(base),target :: tgt3(5,5)

   d1 = new(4,tgt1,9.8)
   d2(:,1) = (/(new(10,tgt2,10.87),i=1,5)/)
   d3(:,2,3) = (/((new(32,tgt3,7.23),i=1,2),j=1,5)/)

   if(sizeof(d1%cptr(1,1)) .NE. 8) print*,"fail 3"
   if(sizeof(d2(5,1)%cptr(2,2)) .NE. 12) print*,"fail 2"
   if(sizeof(d3(10,2,3)%cptr(3,3)) .NE. 8) print*,"fail 1"
 
   cptr=>d2(1,1)%cptr
   select type(cptr)
     class is(deriv)
        print*,"PASS d2"
        cptr%ii = 4
        cptr%jj = 5
        cptr%kk = 6
        print*,d2(1,1)%mm
        print*,d2(1,1)%nn
     class is(base)
        print*,"FAIL d2"
   end select
   cptr=>d1%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d1"
     class is(base)
        print*,"PASS d1"
        cptr%ii = 10
        cptr%jj = 11
        print*,d1%mm
        print*,d1%nn
   end select
   cptr=>d3(1,2,3)%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d3"
     class is(base)
        print*,"PASS d3"
        cptr%ii = 27
        cptr%jj = 28
        print*,d3(1,2,3)%mm
        print*,d3(1,2,3)%nn
   end select

   cptr=>d2(1,1)%cptr
   select type(cptr)
     class is(deriv)
        print*,"PASS d2"
        if ((cptr(1,2)%ii .NE. 4).AND.(cptr(4,5)%jj .NE. 5).AND.(cptr(6,7)%kk .NE. 6)) then
           print *,"FAIL cptr1"
        else
           print *,"PASS cptr1" 
        endif  
     class is(base)
        print*,"FAIL d2"
   end select
   cptr=>d1%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d1"
     class is(base)
        print*,"PASS d1"
        if ((cptr(5,7)%ii .NE. 10) .AND. (cptr(7,8)%jj .NE. 11)) then
           print *,"FAIL cptr2"
        else
           print *,"PASS cptr2" 
        endif
   end select
   cptr=>d3(1,2,3)%cptr
   select type(cptr)
     class is(deriv)
        print*,"FAIL d3"
     class is(base)
        print*,"PASS d3"
        if ((cptr(3,3)%ii .NE. 27) .AND. (cptr(5,5)%jj .NE. 28)) then
           print *,"FAIL cptr3"
        else
           print *,"PASS cptr3" 
        endif
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

  if(fun(cptr_var1,cptr_var2,cptr_var3) ==9) print*,'PASS'
end
