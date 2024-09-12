!
!
module mod
  parameter(n=10003)
  parameter(m=3)
  complex*8 a
  complex*8 b
  common/com1/a(n,m)
  common/com2/b(n,m)
contains
  complex*8 function fun(arg)
    !$omp declare simd
    implicit none
    complex*8:: arg
    fun = arg + (3, -3)
  end function fun
end module mod
!
subroutine init()
  use mod
  implicit none
  integer i,j
  do j=1,m
  do i=1,n
     a(i,j) = 0
     b(i,j) = cmplx(i, -i)
  end do
  end do
end subroutine
!
subroutine sub_00002()
  use mod
  implicit none
  integer i,j
  !$omp simd
  do j=1,m
  do i=1,2
     a(i,j) = fun(b(i,j))
  end do
  end do
end subroutine sub_00002
!
subroutine sub_00008()
  use mod
  implicit none
  integer i,j
  !$omp simd
  do j=1,m
  do i=1,8
     a(i,j) = fun(b(i,j))
  end do
  end do
end subroutine sub_00008
!
subroutine sub_00016()
  use mod
  implicit none
  integer i,j
  !$omp simd
  do j=1,m
  do i=1,16
     a(i,j) = fun(b(i,j))
  end do
  end do
end subroutine sub_00016
!
subroutine sub_10000()
  use mod
  implicit none
  integer i,j
  !$omp simd
  do j=1,m
  do i=1,10000
     a(i,j) = fun(b(i,j))
  end do
  end do
end subroutine sub_10000
!
subroutine sub_10003()
  use mod
  implicit none
  integer i,j
  !$omp simd
  do j=1,m
  do i=1,10003
     a(i,j) = fun(b(i,j))
  end do
  end do
end subroutine sub_10003
!
subroutine check(nn)
  use mod
  implicit none
  integer*8 nn
  complex*8 res1, resn
  res1 = cmplx(4, -4)
  resn = cmplx(nn+3, -nn-3)
  if (a(1,1) .eq. res1 .and. a(nn,1) .eq. resn) then

  else
     print *, nn, res1, resn
     print *, nn, a(1,1), a(nn,1)
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

