 interface
   integer function s1() 
   implicit none
   end function
  end interface
   if(s1() /= 1)print*,"101"
  call z1
  print*,"PASS"
  contains
  subroutine z1
  implicit none
  interface
     integer function s1() bind(c,name='ss1')
     implicit none
     end function
  end interface
  if (s1()/=2) print *,"102"
  end
  end

 integer function s1() 
   implicit none
     s1=1
 end function
 integer function s1() bind(c,name='ss1')
   implicit none
     s1=2
 end function
