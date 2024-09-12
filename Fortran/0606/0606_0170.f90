module m1
  type t
    real x
    contains
    procedure t_lt_r
    procedure,pass(b) :: r_lt_t
    generic :: operator(.USERDEFINELESSTHANOPERATOR.) => t_lt_r,r_lt_t
  end type

    contains
    logical function t_lt_r(a,b)
    class(t),intent(in) :: a
    real,intent(in) :: b
    t_lt_r = a%x<b
    end function

    logical function r_lt_t(a,b)
    real,intent(in) :: a
    class(t),intent(in) :: b
    r_lt_t = a<b%x
    print*, 'r_lt_t OPERATOR(<)  call'
    end function

    integer function  s1()
    s1=20
    call sub() 
    contains 
    subroutine sub()
    type(t) :: a = t(0.5)
    real :: x = 0.7
    if(a.USERDEFINELESSTHANOPERATOR.x)then 
    print*, 'pass'
    else 
    print*, 'Error'
    endif
    end subroutine
    end function

end  module

program example
  use m1
  if (s1() /= 20) print* ,'error'
end program
