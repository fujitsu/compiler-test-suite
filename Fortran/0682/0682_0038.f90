module test
  integer*4,parameter:: n=103
  integer*2 :: ss = 0
contains
  recursive subroutine sub()
    implicit none
    integer*4 i
    integer*2 a(n), ifoo
    call init(a, n)
    !$omp simd reduction(+:ss)
    do i=1,n
       ss = ifoo(ss,a(i))
    end do
  end subroutine sub
end module test

function ifoo(ss, a)
  integer*2 , intent(in) :: a, ss
  integer*2   ifoo
1 format(1h ,z16.16)
  ifoo = ss + a
end function ifoo

subroutine init(a, n)
  implicit none
  integer*4 i
  integer*4 n
  integer*2 a(n)
  do i=1,n
     a(i) = i
  end do
end subroutine init

program main
  use test
  implicit none
  call sub()
  if (ss .eq. 5356) then
     print *, "PASS"
  else
     print *, ss
  endif
end program main
