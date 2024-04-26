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
block
  TYPE(t) :: B
  character(len=10):: ch
  ch="abc"
  B=ch
if(B%x.EQ.10) then
print *,"pass"
else
print*, "fail"
endif
end block 
END PROGRAM



