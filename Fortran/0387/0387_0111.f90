print *,'pass'
end
module mod02
 implicit none
 interface
  subroutine prc02_sub()
   implicit none
  end subroutine
 end interface
end module

module mod01
 implicit none
 interface
  subroutine prc01_sub(p01)
   use mod02
    implicit none
    procedure(prc02_sub),pointer :: p01
   end subroutine
 end interface
end module

function fun01()
 use mod01
 implicit none
 interface
  subroutine sub01(p01)
   use mod02
    implicit none
    procedure(prc02_sub),pointer :: p01
   end subroutine
 end interface
 procedure(prc01_sub),pointer :: fun01
 fun01 => sub01
end function

subroutine sub01(p01)
 use mod02
 implicit none
 procedure(prc02_sub),pointer :: p01
end subroutine
