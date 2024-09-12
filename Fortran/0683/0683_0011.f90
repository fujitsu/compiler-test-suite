!
!
!
module mod
  parameter(n=10003)
  complex*16 a
  complex*16 b
  common/com1/a(n)
  common/com2/b(n)
contains
  complex*16 function fun(arg)
    !$omp declare simd
    implicit none
    complex*16,value:: arg
    fun = arg + (3, -3)
  end function fun
end module mod
!
subroutine init()
  use mod
  implicit none
  integer*8 i
  do i=1,n
     b(i) = cmplx(i, -i)
  end do
end subroutine
!
subroutine sub_00002()
  use mod
  implicit none
  integer*8 i
  !$omp simd
  do i=1,2
     a(i) = fun(b(i))
  end do
end subroutine sub_00002
!
subroutine sub_00008()
  use mod
  implicit none
  integer*8 i
  !$omp simd
  do i=1,8
     a(i) = fun(b(i))
  end do
end subroutine sub_00008
!
subroutine sub_00016()
  use mod
  implicit none
  integer*8 i
  !$omp simd
  do i=1,16
     a(i) = fun(b(i))
  end do
end subroutine sub_00016
!
subroutine sub_10000()
  use mod
  implicit none
  integer*8 i
  !$omp simd
  do i=1,10000
     a(i) = fun(b(i))
  end do
end subroutine sub_10000
!
subroutine sub_10003()
  use mod
  implicit none
  integer*8 i
  !$omp simd
  do i=1,10003
     a(i) = fun(b(i))
  end do
end subroutine sub_10003
!
subroutine check(nn)
  use mod
  implicit none
  integer*8 nn
  complex*16 res1, resn
  res1 = cmplx(4, -4)
  resn = cmplx(nn+3, -nn-3)
  if (a(1) .eq. res1 .and. a(nn) .eq. resn) then

  else
     print *, nn, a(1), a(nn)
  endif
end subroutine

program main
  use mod
  implicit none
  integer*8 nn
  call init
  call sub_00002
  nn = 2
  call check(nn)
  call init
  call sub_00008
  nn = 8
  call check(nn)
  call init
  call sub_00016
  nn = 16
  call check(nn)
  call init
  call sub_10000
  nn = 10000
  call check(nn)
  call init
  call sub_10003
  nn = 10003
  call check(nn)
  print *, "PASS"
end program main

