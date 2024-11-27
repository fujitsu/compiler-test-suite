  module m1 ; integer :: a=555 ; end module
  module m2 ; integer :: b=555 ; end module
  module m3 ; use m1 ; use m2 ; end module

  program main
   use m1
   use m3
   use m2

   if (a == b .and. a==555) then
     !print *, " *** ok! *** "
   else
     print *, " +++ ng! +++ "
   end if

   print *, "pass"
  end program
