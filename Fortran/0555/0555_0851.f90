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
	class(base),allocatable :: cptr(:,:)
        real :: nn
  end type
 
contains
 function fun(d1,d2,d3)
   type(new) :: d1
   type(new) :: d2(5,*)
   type(new) :: d3(10,10,*)

   class(base),allocatable :: cptr1(:,:),cptr2(:,:),cptr3(:,:)

   type(base),allocatable :: tgt1(:,:)
   type(deriv),allocatable :: tgt2(:,:)
   type(base),allocatable :: tgt3(:,:)
   allocate(tgt1(20,20),tgt2(10,15),tgt3(9,7))

   d1 = new(4,tgt1,9.8)
   d2(1,1) = new(10,tgt2,10.87)
   d3(1,2,3) = new(32,tgt3,7.23)

   if(sizeof(d1%cptr(1,1)) .NE. 8) print*,"fail 5"
   if(sizeof(d2(1,1)%cptr(2,2)) .NE. 12) print*,"fail 4"
   if(sizeof(d3(1,2,3)%cptr(3,3)) .NE. 8) print*,"fail 4"
 
   allocate(cptr1,source = d2(1,1)%cptr)
   select type(cptr1)
     type is(deriv)
        print*,"PASS d2"
        cptr1%ii = 4
        cptr1%jj = 5
        cptr1%kk = 6
        print*,d2(1,1)%mm
        print*,d2(1,1)%nn
     type is(base)
        print*,"FAIL d2"
   end select
   allocate(cptr2,source = d1%cptr)
   select type(cptr2)
     class is(deriv)
        print*,"FAIL d1"
     class is(base)
        print*,"PASS d1"
        cptr2%ii = 10
        cptr2%jj = 11
        print*,d1%mm
        print*,d1%nn
   end select
   allocate(cptr3,source = d3(1,2,3)%cptr)
   select type(cptr3)
     class is(deriv)
        print*,"FAIL d3"
     class is(base)
        print*,"PASS d3"
        cptr3%ii = 27
        cptr3%jj = 28
        print*,d3(1,2,3)%mm
        print*,d3(1,2,3)%nn
   end select

   select type(cptr1)
     type is(deriv)
        print*,"PASS d2"
        if ((cptr1(10,7)%ii .NE. 4).AND.(cptr1(5,5)%jj .NE. 5).AND.(cptr1(9,15)%kk .NE. 6)) then
           print *,"FAIL cptr1"
        else
           print *,"PASS cptr1" 
        endif  
     type is(base)
        print*,"FAIL d2"
   end select
   deallocate(cptr1)
   select type(cptr2)
     class is(deriv)
        print*,"FAIL d1"
     class is(base)
        print*,"PASS d1"
        if ((cptr2(10,10)%ii .NE. 10) .AND. (cptr2(20,20)%jj .NE. 11)) then
           print *,"FAIL cptr2"
        else
           print *,"PASS cptr2" 
        endif
   end select
   deallocate(cptr2)
   select type(cptr3)
     class is(deriv)
        print*,"FAIL d3"
     class is(base)
        print*,"PASS d3"
        if ((cptr3(5,3)%ii .NE. 27) .AND. (cptr3(8,7)%jj .NE. 28)) then
           print *,"FAIL cptr3"
        else
           print *,"PASS cptr3" 
        endif
   end select
   deallocate(cptr3)

   fun=9
 end function
end module

program main
  use mod
  class(new),allocatable :: cptr_var1
  class(new),allocatable :: cptr_var2(:,:)
  class(new),allocatable :: cptr_var3(:,:,:)
  allocate(cptr_var1, cptr_var2(5,5), cptr_var3(10,10,10))

  if(fun(cptr_var1,cptr_var2,cptr_var3) ==9) print*,'PASS'
end
