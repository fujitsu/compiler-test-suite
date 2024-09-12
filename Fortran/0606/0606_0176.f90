module m1
  type t
    real x
  contains
    procedure t_uop_i
    procedure,pass(b) :: i_uop_t
    generic :: operator(.binary.) => t_uop_i,i_uop_t
  end type
contains
  type(t) function t_uop_i(a,b)
    class(t),intent(in) :: a
    integer,intent(in) :: b
    t_uop_i%x = a%x*b
  end function
  type(t) function i_uop_t(a,b)
    integer,intent(in) :: a
    class(t),intent(in) :: b
    i_uop_t%x = b%x*a
  end function
end module

program example
  use m1
  type(t) :: a = t(0.5)
  print *,a.binary.3
  print *,10.binary.a
  print*,'pass'
end
