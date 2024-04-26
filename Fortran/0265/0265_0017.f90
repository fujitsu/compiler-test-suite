  interface
     subroutine sub1(dmy) bind(c,name='ss1')
     implicit none
   integer::dmy
     end subroutine
  end interface
  integer::act=0
  call sub1(act)
  if ( act/=2) print *,"102"
  print*,"PASS"
  call z1
  contains
  subroutine z1
  implicit none
 interface
   subroutine  sub1(dmy)
   implicit none
   integer::dmy
   end subroutine
  end interface
  integer::act=0
  call sub1(act)

   if(act /= 1)print*,"101"
  end subroutine

  end

   subroutine  sub1(dmy)
   implicit none
   integer::dmy
     dmy=1
 end subroutine
     subroutine sub1(dmy) bind(c,name='ss1')
   implicit none
   integer::dmy
     dmy=2
 end subroutine
