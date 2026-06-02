
type ty
character(len=4)::y
integer::x
end type
call sub3((/ty('aaaa',2),ty('bbbb',3),ty('cccc',4),ty('dddd',5),ty('eeee',6)/),1)
        print*,"PASS"
        contains
SUBROUTINE sub3(aa,r)        
   IMPLICIT NONE  
    Type(*)::aa(..)
    integer::r 
    if(rank(aa).ne.r)print*,"101",rank(aa)
    if(any(lbound(aa).ne.1))print*,"102"
    if(any(ubound(aa).ne.5))print*,"103"
   END SUBROUTINE sub3
        end 


