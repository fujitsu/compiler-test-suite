interface
     integer function s1() bind(c,name='ss1')
     implicit none
     end function
  end interface
  procedure(s1),pointer::prc
  prc=>s1
  if(prc() /= 2)print*,"301"
  if (s1()/=2) print *,"102"
  call sub2(s1,2)
  print*,"PASS"
  call z1
  contains
  subroutine z1
  implicit none
  interface
    integer function s1()  bind(c,name='ss2')
    implicit none
   end function
  end interface
  procedure(s1),pointer::prc2
  if(s1() /= 1)print*,"101"
  prc2=>s1
  if(prc2() /= 1)print*,"302"
  call sub2(s1,1)
  end subroutine

 subroutine sub2(dprc,darg1)
  procedure(s1)::dprc
  integer::darg1
  if(darg1 == 1) then 
    if( dprc() /= 1) print*,"201"
  endif
  if(darg1 == 2) then 
    if( dprc() /= 2) print*,"202"
 endif
 end subroutine

  end

 integer function s1() bind(c,name='ss2')
   implicit none
     s1=1
 end function
 integer function s1() bind(c,name='ss1')
   implicit none
     s1=2
 end function
