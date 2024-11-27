    module complex
      integer i
      type type1
        real :: r_part
        real :: i_part
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

    use complex, only: iii => i, type11=>type1, &
                 operator(.add.) => operator(.a.)
    implicit none
    type(type11) :: t1, t2, v
    iii = 123
    t1 = type11(1.0, 2.0)
    t2 = type11(3.0, 4.0)
    v = t1 .add. t2
    if (v%r_part .ne. 4.0) write(6,*) "NG"
    if (v%i_part .ne. 6.0) write(6,*) "NG"
    print *,'pass'
    end
