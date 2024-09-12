module m1
 type ty
  integer,allocatable :: alc
 end type
 type(ty),target :: x1
contains

  function fx()
    type(ty), pointer :: fx
     fx => x1
   end function

 function test(b)
   type(ty),intent(out) :: b
   integer :: test
     allocate(b%alc)
     b%alc = 420
     test = b%alc
   end function
 end module

 use m1
   allocate(x1%alc)
   x1%alc = 40
   if (test(fx()) /= 420) print*,105
   if (x1%alc /=420 )print *,104
   print *,"Pass"
 end program
