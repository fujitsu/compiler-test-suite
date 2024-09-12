module m1
  type t
    real x
  contains
    procedure t_uop_i
    procedure,pass(b) :: i_uop_t
    generic :: operator(-) => t_uop_i,i_uop_t
  end type
contains
  type(t) function t_uop_i(a,b)
    class(t),intent(in) :: a
    class(t),intent(in) :: b
    t_uop_i%x = a%x-b%x
  end function
  type(t) function i_uop_t(a,b)
    integer,intent(in) :: a
    class(t),intent(in) :: b
    i_uop_t%x = b%x-a
  end function
end module

program example
  use m1
  type :: tt
  type(t) :: a(2)
  type(t) :: b(4)
  end type 

  type(tt) :: obj
  obj%a(1)%x = 3.5
  obj%b(2)%x = 2.5

  print *,obj%a(1)-obj%b(2)
  print *,1 - obj%a(1)
  print *,'pass'
end
