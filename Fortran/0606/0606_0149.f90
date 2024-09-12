module m1
  type t
    real x
  contains
    procedure t_or_r
    procedure,pass(b) :: r_or_t
    generic :: operator(.or.) => t_or_r,r_or_t
  end type
contains
type(t) function t_or_r(a,b)
    real,intent(in) :: b
    class(t),intent(in) :: a
    t_or_r%x = max(a%x,b)
  end function

real function r_or_t(a,b)
    real,intent(in) :: a
    class(t),intent(in) :: b
    r_or_t = max(a,b%x)
end function
end module

    integer function  s1()
    use m1
    s1 = 20
    call sub()
    contains 
    subroutine  sub()
    type(t) :: a = t(0.5)
    print *,a.or.3.0
    print *,3.0.or.a
    print*,'pass'
    end subroutine
    end function

program example
 interface 
    integer function  s1()
    end function
 end interface 
  if (s1() /= 20) print* ,'Error -2'
end program
