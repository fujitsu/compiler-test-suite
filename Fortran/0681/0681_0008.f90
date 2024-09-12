!
!
!
module mod
  contains
    subroutine sub(x,y,z)
    !$omp declare simd uniform(y)
    integer*4,intent(out) :: z
    integer*4,intent(in) :: x
    integer*4,intent(in) :: y
    z = x + y
  end subroutine
end module mod
subroutine test()
  use mod
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b,j
  common/com1/a(n)
  common/com2/b(n)
  j = 3
  !$omp simd safelen(1)
  do i=1,n
     call sub(b(i),j,a(i))
     j = j + 1
  end do
end subroutine

program main
  implicit none
  integer*8 n,i
  parameter(n=10003)
  integer*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  do i=1,n
     b(i) = i
  enddo
  call test
  do i=1,n
     if (a(i).ne.3+i+(i-1)) then
        print *, i, a(i)
        stop "NG"
     end if
  end do
  print *, "PASS"
end program
