module a1
implicit none

type, abstract ::   MATH_base
    contains
        procedure(perform_task_int),  NOPASS, deferred :: add_int
        procedure(perform_task_int),  NOPASS, deferred :: sub_int
        procedure(perform_task_int),  NOPASS, deferred :: mul_int
        procedure(perform_task_real), NOPASS, deferred :: add_real
        procedure(perform_task_real), NOPASS, deferred :: sub_real
        procedure(perform_task_real), NOPASS, deferred :: mul_real

        GENERIC :: add => add_int, add_real
        GENERIC :: sub => sub_int, sub_real
        GENERIC :: mul => mul_int, mul_real
end type

abstract interface 
    subroutine  perform_task_real(num1, num2, res)
        real :: num1, num2
        real, intent(out) :: res
    end subroutine

    subroutine perform_task_int(num1, num2, res)
        integer :: num1, num2
        integer, intent(out) :: res
    end  subroutine

end interface

end module

module m1
use a1
implicit none

type, extends(MATH_base) :: MATH
contains
        procedure, NOPASS :: add_int =>add_int1
        procedure, NOPASS :: sub_int =>sub_int1
        procedure, NOPASS :: mul_int => mul_int1
        procedure, NOPASS :: add_real => add_real1
        procedure, NOPASS :: sub_real => sub_real1
        procedure, NOPASS :: mul_real => mul_real1
end type

contains

subroutine add_real1(num1, num2, res)
    real num1, num2
    real, intent(out) :: res
    res = num1+ num2
end subroutine

subroutine sub_real1(num1, num2, res)
    real num1, num2
    real, intent(out) :: res
    res =  num1 - num2
end subroutine

subroutine mul_real1(num1, num2, res)
    real num1, num2
    real, intent(out) :: res
    res = num1 * num2
end subroutine

subroutine add_int1(num1, num2, res)
    integer num1, num2
    integer, intent(out) :: res
    res =  num1+ num2
end subroutine

subroutine sub_int1(num1, num2, res)
    integer num1, num2
    integer, intent(out) :: res
    res = num1 - num2
end  subroutine

subroutine mul_int1(num1, num2, res)
    integer num1, num2
    integer, intent(out) :: res
    res = num1* num2
end subroutine

end module

program main
use m1
implicit none
class(MATH_base), pointer :: ptr
real :: radd ,rmul, rsub
integer ::  iadd, imul, isub

    allocate(MATH::ptr)

    call ptr%add(3,5, iadd)
    call ptr%add(4.0,5.6, radd)
    call ptr%sub(3,5, isub)
    call ptr%sub(4.0,5.6, rsub)
    call ptr%mul(3,5, imul)
    call ptr%mul(4.0,5.6, rmul)

    if( iadd .eq.  3+5      .AND. &
        isub .eq.  3-5      .AND. &
        imul .eq.  3*5      .AND. &
        radd .eq.  4.0+5.6  .AND. &
        rsub .eq.  4.0-5.6  .AND. &
        rmul .eq.  4.0*5.6) then
        print*, "pass"
    else
        print*, "fail"
    endif

end program
