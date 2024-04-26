  interface
     integer function s1() bind(c,name='ss1')
     implicit none
     end function
  end interface
  if (s1()/=2) print *,"102"
  print*,"PASS"
  call z1
  contains
  subroutine z1
  implicit none
 interface
   integer function s1() bind(c)
   implicit none
   end function
  end interface
   if(s1() /= 1)print*,"101"
  end subroutine

  end

 integer function s1() bind(c)
   implicit none
     s1=1
 end function
 integer function s1() bind(c,name='ss1')
   implicit none
     s1=2
 end function
