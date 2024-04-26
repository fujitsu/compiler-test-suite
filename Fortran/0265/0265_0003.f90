
   integer function s1() 
   implicit none
     s1=1
   end function
   integer function s1() bind(c,name='ss1')
   implicit none
     s1=2
   end function
  subroutine z1
  implicit none
  interface
     integer function s1() bind(c,name='ss1')
     implicit none
     end function
  end interface
  if (s1()/=2) print *,101
  end


  Interface 
   subroutine z1
   end subroutine
  end Interface

  call z1
  print*,"PASS"
  end
