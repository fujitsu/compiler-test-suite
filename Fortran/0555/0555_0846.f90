module mod1
  type base
	integer :: ii=0
	integer :: jj=0
  end type
 
  type,extends(base) :: deriv
	integer :: kk=0
  end type
 
  type new
        integer :: mm=0
	class(base),allocatable :: cptr(:,:)
        real :: nn=23.3
  end type
 
contains
 function fun(d1,d2,d3)
   type(new) :: d1
   type(new) :: d2(:,:)
   type(new) :: d3(:,:,:)

   class(base),allocatable :: cptr(:,:)

   class(base),allocatable :: tgt1(:,:)
   class(deriv),allocatable :: tgt2(:,:)
   class(base),allocatable :: tgt3(:,:)
   allocate(base :: tgt1(20,20))
   allocate(deriv :: tgt2(10,15))
   allocate(base :: tgt3(9,7))

   d1 = new(4,tgt1,9.8)
   d2(1,1) = new(10,tgt2,10.87)
   d3(1,2,3) = new(32,tgt3,7.23)

   if(sizeof(d1%cptr(1,1)) .NE. 8) print*,"fail 5"
   if(sizeof(d2(1,1)%cptr(2,2)) .NE. 12) print*,"fail 4"
   if(sizeof(d3(1,2,3)%cptr(3,3)) .NE. 8) print*,"fail 4"
 
   allocate(cptr,source = d2(1,1)%cptr)
   select type(cptr)
     type is(deriv)
        print*,"PASS d2"
        print*,d2(1,1)%mm
        print*,d2(1,1)%nn
     type is(base)
        print*,"FAIL d2"
        print*,d2(1,1)%mm
        print*,d2(1,1)%nn
   end select
   deallocate(cptr)
   allocate(cptr,source = d1%cptr)
   select type(cptr)
     class is(deriv)
        print*,"FAIL d1"
        print*,d1%mm
        print*,d1%nn
     class is(base)
        print*,"PASS d1"
        print*,d1%mm
        print*,d1%nn
   end select
   deallocate(cptr)
   allocate(cptr,source = d3(1,2,3)%cptr)
   select type(cptr)
     class is(deriv)
        print*,"FAIL d3"
        print*,d3(1,2,3)%mm
        print*,d3(1,2,3)%nn
     class is(base)
        print*,"PASS d3"
        print*,d3(1,2,3)%mm
        print*,d3(1,2,3)%nn
   end select
   deallocate(cptr)

   fun=9
 end function
end module

program main
  use mod1
  class(new),allocatable :: cptr_var1
  class(new),allocatable :: cptr_var2(:,:)
  class(new),allocatable :: cptr_var3(:,:,:)
   allocate(cptr_var1, cptr_var2(5,5), cptr_var3(10,10,10))

  if(fun(cptr_var1,cptr_var2,cptr_var3) ==9) print*,'PASS'
end
