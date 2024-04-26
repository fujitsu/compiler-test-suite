  interface
      subroutine s1(dmy) bind(c,name='ss1')
     implicit none
     integer::dmy
     end subroutine
  end interface
   integer::act=0
   call s1(act)
   if(act /= 2)print*,"102"
  print*,"PASS"
  call z1
  contains
  subroutine z1
  implicit none
 interface
   subroutine s1(dmy) bind(c)
   implicit none
     integer::dmy
   end subroutine
  end interface
   integer::act=0
   call s1(act)
   if(act/= 1)print*,"101",act
  end subroutine

  end

 subroutine s1(dmy) bind(c)
   implicit none
     integer::dmy
     dmy=1
 end subroutine
 subroutine s1(dmy) bind(c,name='ss1')
   implicit none
     integer::dmy
     dmy=2
 end subroutine
