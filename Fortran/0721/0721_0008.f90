  intrinsic :: abs
  real :: paa
  pointer :: paa
  external :: paa
   paa => abs
   call sub()
    contains
  subroutine sub()
   real :: ra
   ra =abs(1.0)
   if (ra .ne. 1.e0) print *,'fail'
   print *,"pass"
  end subroutine
 end
