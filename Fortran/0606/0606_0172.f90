module m1
  type t
    real x
    contains
    procedure t_lt_r
    procedure,pass(b) :: r_lt_t
    generic :: operator(.USERDEFINEGREATERTHANOPERATOR.) => t_lt_r,r_lt_t
  end type
    contains
    logical function t_lt_r(a,b)
    class(t),intent(in) :: a
    real,intent(in) :: b
    t_lt_r = a%x>b
    end function

    logical function r_lt_t(a,b)
    real,intent(in) :: a
    class(t),intent(in) :: b
    r_lt_t = a>b%x
    print*, 'r_lt_t OPERATOR(>)  call'
    end function
end  module

    integer function  s1()
    use m1
    call sub()
    contains 
    subroutine  sub()
    type(t) :: a = t(1.5)
    real :: x = 0.7
    s1=20
    if(a.USERDEFINEGREATERTHANOPERATOR.x)then 
    print*, 'pass'
    else 
    print*, 'Error -1'
    endif
    end subroutine
    end function

program example
 interface 
    integer function  s1()
    end function
 end interface 
  if (s1() /= 20) print* ,'Error -2'
end program
