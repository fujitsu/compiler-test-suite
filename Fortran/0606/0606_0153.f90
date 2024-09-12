module m1
  type t
    integer x
    contains
    procedure,pass(b) :: multiplication
    generic :: operator(*) => multiplication
  end type

  type t2
     integer x
  end type

    contains

    integer function multiplication (a,b)
    class(t2),intent(in) :: a 
    class(t),intent(in) :: b
    multiplication = a%x*b%x
    end function

    integer function  s1()
    call sub() 
    contains 
    subroutine sub()
    type(t) :: objt1
    type(t2) :: objt2
    objt1%x = 10
    objt2%x = 5
    s1=objt2 * objt1
    end subroutine
    end function

end  module

program example
  use m1
  if (s1() /= 10*5) print* ,'Error'
  print*, 'pass'
end program
