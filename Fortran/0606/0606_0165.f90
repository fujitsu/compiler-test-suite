MODULE mod_t
  type :: t
    integer :: x
    contains
    procedure,pass(this) :: t_gt
    procedure,pass(this) :: t_le
    generic :: operator(>)  => t_gt
    generic :: operator(<=) => t_le
    end type

    CONTAINS

    LOGICAL FUNCTION t_gt(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_gt = (this%x > other%x)
    END FUNCTION

    LOGICAL FUNCTION t_le(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_le = (this%x <= other%x)
    END FUNCTION
END MODULE

use mod_t
TYPE(t) :: B
TYPE(t) :: C
B%x=10
C%x=50
call sub(B.LE.C, C>B)
contains 
subroutine sub(d1, d2)
LOGICAL d1, d2
if(.NOT. d1) print*, 'Error -1'
if(.NOT. d2) print*, 'Error -2'

print*, 'pass'
end subroutine 
end 
