 
subroutine sub(dmy1)  bind(c,name='ss1')
  implicit none
   integer::dmy1
      dmy1=200
end subroutine
subroutine sub(dmy1)
   implicit none
   integer::dmy1
      dmy1=100
end subroutine

program main
 call z1
contains
 subroutine z1
  implicit none
  integer::aa
  interface
subroutine sub(dmy1)  bind(c,name='ss1')
  implicit none
   integer::dmy1
end subroutine
 end interface

call sub(aa)
 if (aa/=200) print *,101
 print*,"PASS"
 end subroutine

 end

