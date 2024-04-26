call test()
print *,'pass'
end
subroutine test()
interface swap
  subroutine real_swap(x,y)
    implicit none
    real, intent(inout) :: x,y
  end subroutine real_swap
  subroutine int_swap(x,y)
    implicit none
    integer, intent(inout) :: x,y
  end subroutine int_swap
end interface
real :: r1,r2
integer :: i1,i2
call swap(i1,i2)
call swap(r1,r2)
if (i1.ne.1)print *,'err'
if (i2.ne.2)print *,'err'
if (int(r1).ne.10)print *,'err'
if (int(r2).ne.20)print *,'err'
end
  subroutine real_swap(x,y)
    implicit none
    real, intent(inout) :: x,y
    x=10.0_4
    y=20.0_4
  end subroutine real_swap
  subroutine int_swap(x,y)
    implicit none
    integer, intent(inout) :: x,y
    x=1
    y=2
  end subroutine int_swap
