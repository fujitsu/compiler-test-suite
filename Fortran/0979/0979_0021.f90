    module complex
          integer i
      type type1
        integer :: r_part
        integer :: i_part
      end type type1
      interface operator(.a.)
        module procedure plus 
      end interface           
    contains
      type(type1) function plus(op1,op2)
        type(type1),intent(in) :: op1,op2
        plus%r_part = op1%r_part + op2%r_part
        plus%i_part = op1%i_part + op2%i_part
      end function plus
    end module

    use complex, operator(.add.) => operator(.a.)
    implicit none
    type(type1) :: t1, t2, v
    i = 123
    t1 = type1(1, 2)
    t2 = type1(3, 4)
    v = t1 .add. t2
    if (v%r_part .ne. 4) write(6,*) "NG"
    if (v%i_part .ne. 6) write(6,*) "NG"
    print *,'pass'
    end
