module test
  integer*4,parameter:: n=10007
  real*4 :: ss = 0
contains
  recursive subroutine sub()
    implicit none
    integer*4 i
    real*4 a(n), ifoo
    call init(a, n)
    !$omp simd reduction(+:ss)
    do i=1,n
       ss = ifoo(ss,a(i))
    end do
  end subroutine sub
end module test

function ifoo(ss, a)
  real*4 , intent(in) :: a, ss
  real*4   ifoo
1 format(1h ,z16.16)
  ifoo = ss + a
end function ifoo

subroutine init(a, n)
  implicit none
  integer*4 i
  integer*4 n
  real*4 a(n)
  do i=1,n
     a(i) = i
  end do
end subroutine init

program main
  use test
  implicit none
  call sub()
  if (ss .eq. 50075028 .or. ss .eq. 50072920.0) then
     print *, "PASS"
  else
    if (ss .eq. 50075024.0) then
      print *, "PASS"
    else
      print *, ss
    endif
  endif
end program main
