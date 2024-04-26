MODULE mod_t
  type :: t
    integer :: x
    contains
    procedure,pass(this) :: ss
    generic :: Assignment(=)  => ss
    end type
CONTAINS
subroutine ss(this,d2)
class(t),INTENT(OUT) :: this
character(len=*),intent(in) :: d2
this%x=len(d2)
end subroutine
END MODULE


PROGRAM main
  USE mod_t
interface Assignment(=)
subroutine ss1(d1,d2)
integer,INTENT(OUT) :: d1
character(len=*),intent(in) :: d2
end subroutine
end interface Assignment(=)
block
  TYPE(t) :: B
  character(len=10):: ch
  integer :: ii
  ch="abc"
  B=ch

block 

if(B%x.EQ.10) then
print *,"pass-1"
else
print*, "fail-1"
endif
end block 

ii =ch
if(ii.EQ.10) then
print *,"pass-2"
else
print*, "fail-2"
endif
end block
 
END PROGRAM


subroutine ss1(d1,d2)
integer, INTENT(OUT) :: d1
character(len=*),intent(in) :: d2
d1 = len(d2)
end subroutine
