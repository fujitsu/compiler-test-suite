integer function A()
   implicit none
     A=1
end function
 
integer function A() bind(c,name='ss1')
  implicit none
  A=2
end function

program main
 call z1
contains
 subroutine z1
  implicit none

  interface
     integer function A() bind(c,name='ss1')
    implicit none
    end function
 end interface

 if (A()/=2) print *,101
 print*,"PASS"
 end subroutine
 end

