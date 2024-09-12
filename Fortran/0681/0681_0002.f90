!
!
module mod
  contains
    subroutine sub(x,y,z)
    !$omp declare simd
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
  integer*4 a,b,c
  common/com1/a(n)
  common/com2/b(n)
  common/com3/c(n)
  !$omp simd
  do i=1,n
     call sub(b(i),c(i)+1,a(i))
  end do
end subroutine

program main
  implicit none
  integer*8 n,i
  parameter(n=10003)
  integer*4 a,b,c
  common/com1/a(n)
  common/com2/b(n)
  common/com3/c(n)
  do i=1,n
     b(i) = i
     c(i) = 2
  enddo
  call test
  do i=1,n
     if (a(i).ne.3+i) then
        stop "NG"
     end if
  end do
  print *, "PASS"
end program
