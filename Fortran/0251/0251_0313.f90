MODULE mod_t
  type :: t
    integer :: x
    contains
    procedure,pass(this) :: t_eq
    generic :: operator(==) => t_eq
    end type
CONTAINS
  LOGICAL FUNCTION t_eq(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_eq = (this%x == other%x)
  END FUNCTION
END MODULE


PROGRAM main
  USE mod_t

interface operator (.EQ.)
LOGICAL FUNCTION t_eq1(this, other)
 USE mod_t
 CLASS(t), INTENT(in) :: this 
  integer , INTENT(in) :: other
END FUNCTION
end interface

block
  TYPE(t) :: B
  TYPE(t) :: C
  B%x=10
  C%x=10

if(C.EQ.B) then
print *,"pass-1"
else
print*, "fail-1"
endif

if(C.EQ.10) then
print *,"pass-2"
else
print*, "fail-2"
endif

end block 
END PROGRAM

LOGICAL FUNCTION t_eq1(this, other)
 USE mod_t
    CLASS(t), INTENT(in) :: this
    integer, INTENT(in) :: other
    t_eq1 = (this%x == other)
END FUNCTION
