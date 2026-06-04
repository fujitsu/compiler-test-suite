type ty
integer::x
character::y(4)
end type
integer :: ii
call sub3((/ty(2,'a'),ty(3,'b'),ty(4,'c'),ty(5,'d'),ty(6,'e')/),ii)
if(ii .ne. 2) print*,"201"
print*,"PASS"
contains
SUBROUTINE sub3(aa,r)        
IMPLICIT NONE  
 class(*)::aa(..)
    integer::r
   r=2
   if(any(lbound(aa) .ne. 1))print*,"101"
   if(any(ubound(aa) .ne. 5))print*,"101"
   if(rank(aa) .ne. 1)print*,"101"
    END SUBROUTINE sub3
        end 


