integer function A() bind(c,name='ss1')
  implicit none
  A=2
end function
integer function A()
   implicit none
     A=1
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

 integer,allocatable::ii
 allocate(ii,source=A())
 if(ii /= 2)print*,"102"
 if (A()/=2) print *,"101"
 call sub2(A())
 print*,"PASS"
 end

  subroutine sub2(dmy)
  integer::dmy
  if(dmy /= 2)print*,"103"
 end subroutine
end
