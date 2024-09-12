module m1
  type t
    real x
    contains
    procedure t_not
    generic :: operator(.NOT.) => t_not
  end type
    contains
    type(t) function t_not(a)
    class(t),intent(in) :: a
    t_not%x = -a%x
    end function
end  module

    integer function  s1()
    use m1
    type(t) :: a = t(0.5)
    s1=20
    print *,.not.a
    print *, 'pass'
    end function

program example
 interface 
    integer function  s1()
    end function
 end interface 
  if (s1() /= 20) print* ,'Error'
end program
