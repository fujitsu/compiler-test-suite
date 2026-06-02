module m1
  type t
    real x
  contains
    procedure :: prc1=> t_uop_i
    procedure,pass(b) :: prc2=> i_uop_t
    generic :: operator(-) => prc1, prc2
  end type

type, extends(t) :: t1
    real y
  contains
    procedure :: prc1=> abc
    procedure, pass(b) :: prc2 => bcd
    generic :: operator(-) => prc1 , prc2
end type

contains
  type(t) function t_uop_i(a,b)
    class(t),intent(in) :: a
    class(t),intent(in) :: b(*)
    print*,'base version  t_uop_i OPERATOR(-) call ARRAY'
    t_uop_i%x = a%x-b(1)%x
  end function
  type(t) function i_uop_t(a,b)
    integer,intent(in) :: a
    class(t),intent(in) :: b
    print*,'base version i_uop_t OPERATOR(-) call'
    i_uop_t%x = b%x-a
  end function

 type(t) function abc(a,b)
    class(t1),intent(in) :: a
    class(t),intent(in) :: b(*)
    print*,'Derived version  abc OPERATOR(-) call ARRAY'
    abc%x = a%x-b(1)%x
  end function

  type(t) function bcd(a,b)
    integer,intent(in) :: a
    class(t1),intent(in) :: b
    bcd%x = b%x - a
  end function

end module

program example
  use m1
  class(t), pointer :: ptr(:)
  type(t1), target :: a(2)
  ptr => a
  a(1)%x = 3.5
  print *,1 - ptr(1)
  print*,'pass'
end
