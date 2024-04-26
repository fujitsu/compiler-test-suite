subroutine bar(a)
  real(kind=8),dimension(1:100) :: a
  a(1) = 1._8
end subroutine bar
program main
  call foo()
  print *, "OK"
contains
  recursive subroutine foo()
    implicit none
    real(kind=8),dimension(1:100) :: mat
    integer(kind=4) :: i
    do i=1,100
       mat(i) = i
    end do
    call bar(mat)
  end subroutine foo
end program main

