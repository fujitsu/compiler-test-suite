  module m1 ; integer :: a=555 ; end module
  module m11 ; use m1 ; end module
  module m2 ; integer :: b=555 ; end module
  module m22 ; use m2 ; end module
  module m3 ; use m1 ; use m11 ; use m22 ; use m2 ; private ; end module


  program main
   use m1
   use m3
   use m2

   if (a == b .and. a==555) then
     print *, "pass"
   else
     print *, " +++ ng! +++ "
   end if

  end program
