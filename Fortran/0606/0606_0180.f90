MODULE mod_t
  type :: t
    integer :: x
    contains

    procedure,pass(this) :: t_eq
    generic :: operator(==) => t_eq 

    procedure,pass(this) :: t_gt
    generic :: operator(>) => t_gt

    procedure,pass(this) :: t_ge 
    generic :: operator(>=) => t_ge

    procedure,pass(this) :: t_lt
    generic :: operator(<) => t_lt

    procedure,pass(this) :: t_le
    generic :: operator(<=) => t_le

    end type

CONTAINS
  LOGICAL FUNCTION t_eq(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_eq = (this%x == other%x)
    print *,"t_eq"
  END FUNCTION

  LOGICAL FUNCTION t_ne(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_ne = (this%x /= other%x)
    print *,"t_ne"
  END FUNCTION

  LOGICAL FUNCTION t_gt(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_gt = (this%x > other%x)
    print *,"t_gt"
  END FUNCTION

  LOGICAL FUNCTION t_ge(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_ge = (this%x >= other%x)
    print *,"t_ge"
  END FUNCTION

  LOGICAL FUNCTION t_lt(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_lt = (this%x < other%x)
    print *,"t_lt"
  END FUNCTION

  LOGICAL FUNCTION t_le(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_le = (this%x <= other%x)
    print *,"t_le"
  END FUNCTION
END MODULE

PROGRAM main
  USE mod_t
  LOGICAL :: A
  TYPE(t) :: B
  TYPE(t) :: C
  C%x=10
  B%x=10
  A = (B == B)   
print *,A
  A = (C.EQ.B)   
print *,A
  A = (C <= B) 
print *,A
  A = (C.LE.B) 
  C%x=5
print *,A
  A = (C <  B) 
print *,A
  A = (C.LT.B) 
print *,A
  C%x=20
  A = (C >= B)
print *,A
  A = (C.GE.B)   
print *,A
  A = (C >  B)   
print *,A
  A = (C.GT.B)   
print *,A

print*,'pass'
END PROGRAM
