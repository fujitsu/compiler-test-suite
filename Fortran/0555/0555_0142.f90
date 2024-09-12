MODULE module_2

implicit none

type drv1
  integer::ii = 0
  real::jj    = 0.0
end type

type,extends(drv1) :: drv2
  real::kk   = 0.0
end type

type,extends(drv2) :: drv3
  type(drv2)::drv2_obj
end type

END MODULE

program test
USE module_2

implicit none 

character(LEN=4)::str1
character(LEN=7)::str2

INTERFACE OPERATOR(+)
 function pls(a,b)
   character(len=4),INTENT(in):: a
   character(len=7),INTENT(in):: b
   character(len=15)::pls
 END function
END INTERFACE operator(+)

str1='ABC'
str2='DEFGHIJ'

call sub(str1+str2)
contains
subroutine sub(dum)
  class(*)::dum
  TYPE(drv2) :: var_drv2
  LOGICAL :: x
  x = SAME_TYPE_AS(dum , var_drv2)
  if(x .eqv. .false.) then
    print*,'pass'
  else
    print*,111
  endif
 end subroutine
end program

function pls(dum1,dum2)
    character(len=4), INTENT(IN)::dum1
    character(len=7), INTENT(IN)::dum2
    character(len=15)::pls
    pls=dum1//"and "//dum2
end function
