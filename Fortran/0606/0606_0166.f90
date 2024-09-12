MODULE mod_t
  type :: t
    integer :: x
    contains
    procedure,pass(this) :: t_gt
    procedure,pass(this) :: t_le
    generic :: operator(.Greaterthan.)  => t_gt
    generic :: operator(.LessthanEqual.) => t_le
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

subroutine sub()
use mod_t
TYPE(t) :: B
TYPE(t) :: C
B%x=10
C%x=50

if(f1(B.LessthanEqual.B , C.Greaterthan.B).NE.10) print*, 'Error'
print*, 'pass'

contains 
integer function f1(d1, d2)
LOGICAL d1, d2
if(.NOT. d1) print*, 'Error -1'
if(.NOT. d2) print*, 'Error -2'
f1=10
end function
end subroutine 

call sub 
end
