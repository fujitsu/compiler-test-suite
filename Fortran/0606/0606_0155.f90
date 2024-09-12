module m1
  type t
    integer x
    contains
    procedure t_lt_r
    procedure,pass(b) :: r_lt_t
    generic :: operator(.LE.) => t_lt_r,r_lt_t
  end type

  type t2
     integer x
  end type 

    contains
    logical function t_lt_r(a,b)
    class(t),intent(in) :: a
    class(t2),intent(in) ::b 
    t_lt_r = a%x.LE.b%x
    end function

    logical function r_lt_t(a,b)
    real,intent(in) :: a
    class(t),intent(in) :: b
    r_lt_t = a>b%x
    end function
end  module

    integer function  s1()
    use m1
    call sub()
    contains 
    subroutine  sub()
    type(t) :: objt1
    type(t2) :: objt2
    objt1%x = 10
    objt2%x = 50
    s1=20
    if(objt1 .LE. objt2)then 
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
