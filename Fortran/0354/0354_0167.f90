program main
  integer :: a(10)
  integer :: b(10)
  a=(/1,2,3,4,5,6,7,8,9,10/)
  b=(/1,2,3,4,5,6,7,8,9,10/)
  call ifun(a, b)
  print *,"OK"
contains
  elemental impure subroutine ifun(i,j)
    integer :: i,j,x
    intent(in) :: i, j
    x = i + j
    if (x .ne. (i*2)) then
       print *,"NG"
    end if
  end subroutine ifun
end program main
