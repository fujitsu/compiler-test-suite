MODULE mod1
TYPE point
  integer :: x
  contains
  procedure::sub
  generic::assignment(=)=>sub
END TYPE point
contains
subroutine sub (ax,bx) 
  class(point), INTENT(inout) :: ax
  integer, INTENT(in) :: bx(..)
    if(lbound(bx,dim=1)/=1)print*,110
      if(lbound(bx,dim=2)/=1)print*,111
        if(lbound(bx,dim=3)/=1)print*,112
          if(ubound(bx,dim=1)/=2)print*,113
            if(ubound(bx,dim=2)/=2)print*,114
              if(ubound(bx,dim=3)/=2)print*,115
  END subroutine sub
END MODULE mod1
program main
use mod1
type(point) ::z
integer :: a(3:4,4:5,1:2)
        a =12
z = a
print*,"PASS"
end
  

