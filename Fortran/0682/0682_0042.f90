module test
  integer*4,parameter:: n=10007
  real*8 :: ss = 0
contains
  recursive subroutine sub()
    implicit none
    integer*4 i
    real*8 a(n), ifoo
    call init(a, n)
    !$omp simd reduction(+:ss)
    do i=1,n
       ss = ifoo(ss,a(i))
    end do
  end subroutine sub
end module test

function ifoo(ss, a)
  real*8 , intent(in) :: a, ss
  real*8   ifoo
1 format(1h ,z16.16)
  ifoo = ss + a
end function ifoo

subroutine init(a, n)
  implicit none
  integer*4 i
  integer*4 n
  real*8 a(n)
  do i=1,n
     a(i) = i
  end do
end subroutine init

program main
  use test
  implicit none
  call sub()
  if (ss .eq. 50075028) then
     print *, "PASS"
  else
     print *, ss
  endif
end program main
