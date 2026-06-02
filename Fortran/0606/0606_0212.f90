MODULE mod_t
  type :: t
    integer :: x
    contains
    procedure,pass(this) :: teq1 => t_eq1
    procedure,pass(this) :: tge1 => t_ge1 
    procedure,pass(this) :: tlt1 => t_lt1
    procedure,pass(this) :: tgt1 => t_gt1
    procedure,pass(this) :: tle1 => t_le1
    generic :: operator(>)  => tgt1
    generic :: operator(==) => teq1
    generic :: operator(>=) => tge1
    generic :: operator(<)  => tlt1
    generic :: operator(<=) => tle1
  end type

  type, extends(t)::t1
    integer :: jj
    contains
    procedure,pass(this) :: tgt1 => t_gt2
    procedure,pass(this) :: tlt1 => t_lt2
    procedure,pass(this) :: teq1 => t_eq2
    procedure,pass(this) :: tge1 => t_ge2
    procedure,pass(this) :: tle1 => t_le2
    generic :: operator(==) => teq1
    generic :: operator(>)  => tgt1
    generic :: operator(>=) => tge1
    generic :: operator(<)  => tlt1
    generic :: operator(<=) => tle1
  end type
CONTAINS
  LOGICAL FUNCTION t_eq1(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_eq1 = (this%x == other%x)
    print *,"t_eq1"
  END FUNCTION

  LOGICAL FUNCTION t_ne1(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_ne1 = (this%x /= other%x)
    print *,"t_ne1"
  END FUNCTION

  LOGICAL FUNCTION t_gt1(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_gt1 = (this%x > other%x)
    print *,"t_gt1"
  END FUNCTION

  LOGICAL FUNCTION t_ge1(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_ge1 = (this%x >= other%x)
    print *,"t_ge1"
  END FUNCTION

  LOGICAL FUNCTION t_lt1(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_lt1 = (this%x < other%x)
    print *,"t_lt1"
  END FUNCTION

  LOGICAL FUNCTION t_le1(this, other)
    CLASS(t), INTENT(in) :: this, other
    t_le1 = (this%x <= other%x)
    print *,"t_le1"
  END FUNCTION
LOGICAL FUNCTION t_eq2(this, other)
    CLASS(t1), INTENT(in) :: this
    CLASS(t), INTENT(in) ::  other
    t_eq2 = (this%x == other%x)
    print *,"t_eq2"
  END FUNCTION

  LOGICAL FUNCTION t_ne2(this, other)
    CLASS(t1), INTENT(in) :: this
    CLASS(t), INTENT(in) ::  other
    t_ne2 = (this%x /= other%x)
    print *,"t_ne2"
  END FUNCTION

  LOGICAL FUNCTION t_gt2(this, other)
    CLASS(t1), INTENT(in) :: this
    CLASS(t), INTENT(in) ::  other
    t_gt2 = (this%x > other%x)
    print *,"t_gt2"
  END FUNCTION

  LOGICAL FUNCTION t_ge2(this, other)
    CLASS(t1), INTENT(in) :: this
    CLASS(t), INTENT(in) ::  other
    t_ge2 = (this%x >= other%x)
    print *,"t_ge2"
  END FUNCTION

  LOGICAL FUNCTION t_lt2(this, other)
    CLASS(t1), INTENT(in) :: this
    CLASS(t), INTENT(in) ::  other
    t_lt2 = (this%x < other%x)
    print *,"t_lt2"
  END FUNCTION

  LOGICAL FUNCTION t_le2(this, other)
    CLASS(t1), INTENT(in) :: this 
    CLASS(t), INTENT(in) ::  other
    t_le2 = (this%x <= other%x)
    print *,"t_le2"
  END FUNCTION
END MODULE

PROGRAM main
  USE mod_t
  LOGICAL :: A
  TYPE(t1) :: B
  TYPE(t1) :: C
  B%x=10
  C%x=10
  B%jj=10
  C%jj=10

  A = (B == B)
print *,A
  A = (C.EQ.B)   
print *,A
  A = (C <= B) 
print *,A
  C%x= 5
  A = (C.LE.B) 
print *,A
  A = (C < B) 
print *,A
  A = (C.LT.B) 
print *,A
  C%x= 15
  A = (C >= B)
print *,A
  A = (C.GE.B)   
print *,A
  A = (C >  B)   
print *,A
  A = (C.GT.B)   
print *,A
print *,"pass"
END PROGRAM
