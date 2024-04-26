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

block
  TYPE(t) :: B
  TYPE(t) :: C
  B%x=10
  C%x=10
if(C.EQ.B) then
print *,"pass"
else
print*, "fail"
endif
end block 
END PROGRAM



