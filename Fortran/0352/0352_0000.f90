subroutine test1(c4_0, c4_1)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_1
  integer(kind=4) :: i
  do i=1,100
    c4_1(i) = 2.0 * c4_0(i)
  enddo
end subroutine test1

subroutine test2(c4_0, c4_2)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_2
  integer(kind=4) :: i
  do i=1,100
    c4_2(i) = c4_0(i) * 2.0
  enddo
end subroutine test2

subroutine test3(c4_0, c4_3, r4_0)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_3
  real(kind=4) :: r4_0
  integer(kind=4) :: i
  do i=1,100
    c4_3(i) = c4_0(i) * r4_0
  enddo
end subroutine test3

subroutine test4(c4_0, c4_4, r4_0)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_4
  real(kind=4) :: r4_0
  integer(kind=4) :: i
  r4_0 = 2.0;
  do i=1,100
    c4_4(i) = c4_0(i) * r4_0
  enddo
end subroutine test4

subroutine test5(c4_0, c4_5, i4_0)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_5
  integer(kind=4) :: i, i4_0
  do i=1,100
    c4_5(i) = i4_0 * c4_0(i)
  enddo
end subroutine test5

subroutine test6(c4_0, c4_6, r4_0)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_6
  real(kind=4) :: r4_0
  integer(kind=4) :: i
  do i=1,100
    c4_6(i) = c4_0(i) * cmplx(r4_0, 0.)
  enddo
end subroutine test6

subroutine test7(c4_0, c4_7, r4_0)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_7
  real(kind=4) :: r4_0
  integer(kind=4) :: i
  do i=1,100
    c4_7(i) = c4_0(i) * cmplx(0., r4_0)
  enddo
end subroutine test7

subroutine test8(c4_0, c4_8, r4_0)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_8
  real(kind=4) :: r4_0
  integer(kind=4) :: i
  do i=1,100
    c4_8(i) = cmplx(r4_0, 0.) * c4_0(i)
  enddo
end subroutine test8

subroutine test9(c4_0, c4_9)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_9
  integer(kind=4) :: i
  do i=1,100
    c4_9(i) = c4_0(i) * cmplx(3.0, 0.)
  enddo
end subroutine test9

subroutine test10(c4_0, c4_10)
  implicit none
  complex(kind=4), dimension(100) :: c4_0, c4_10
  integer(kind=4) :: i
  do i=1,100
    c4_10(i) = c4_0(i) * cmplx(0., 2.0)
  enddo
end subroutine test10

subroutine test11(c8_0, c8_1)
  implicit none
  complex(kind=8), dimension(100) :: c8_0, c8_1
  integer(kind=4) :: i
  do i=1,100
    c8_1(i) = 2.0d0 * c8_0(i)
  enddo
end subroutine test11

subroutine test12(c8_0, c8_2)
  implicit none
  complex(kind=8), dimension(100) :: c8_0, c8_2
  integer(kind=4) :: i
  do i=1,100
    c8_2(i) = c8_0(i) * 2.0d0
  enddo
end subroutine test12

program main
  complex(kind=4), dimension(100) :: c4_0=(0.0,0.0), c4_1=(0.0,0.0), c4_2=(0.0,0.0), c4_3=(0.0,0.0)
  complex(kind=4), dimension(100) :: c4_4=(0.0,0.0), c4_5=(0.0,0.0), c4_6=(0.0,0.0), c4_7=(0.0,0.0)
  complex(kind=4), dimension(100) :: c4_8=(0.0,0.0), c4_9=(0.0,0.0), c4_10=(0.0,0.0)
  complex(kind=8), dimension(100) :: c8_0=(0.0,0.0), c8_1=(0.0,0.0), c8_2=(0.0,0.0)
  real(kind=4), parameter :: r4_0 = 2.0
  real(kind=4) r4_1
  integer(kind=4), parameter :: i4_0 = 2

  call test1(c4_0, c4_1)
  if (c4_1(1) .ne. 0.0) then
     print *, "NG", c4_1(1)
  endif

  call test2(c4_0, c4_2)
  if (c4_2(1) .ne. 0.0) then
     print *, "NG", c4_2(1)
  endif

  call test3(c4_0, c4_3, r4_0)
  if (c4_3(1) .ne. 0.0) then
     print *, "NG", c4_3(1)
  endif

  call test4(c4_0, c4_4, r4_1)
  if (c4_4(1) .ne. 0.0) then
     print *, "NG", c4_4(1)
  endif

  call test5(c4_0, c4_5, i4_0)
  if (c4_5(1) .ne. 0.0) then
     print *, "NG", c4_5(1)
  endif

  call test6(c4_0, c4_6, r4_0)
  if (c4_6(1) .ne. 0.0) then
     print *, "NG", c4_6(1)
  endif

  call test7(c4_0, c4_7, r4_0)
  if (c4_7(1) .ne. 0.0) then
     print *, "NG", c4_7(1)
  endif

  call test8(c4_0, c4_8, r4_0)
  if (c4_8(1) .ne. 0.0) then
     print *, "NG", c4_8(1)
  endif

  call test9(c4_0, c4_9)
  if (c4_9(1) .ne. 0.0) then
     print *, "NG", c4_9(1)
  endif

  call test10(c4_0, c4_10)
  if (c4_10(1) .ne. 0.0) then
     print *, "NG", c4_10(1)
  endif

  call test11(c8_0, c8_1)
  if (c8_1(1) .ne. 0.0) then
     print *, "NG", c8_1(1)
  endif

  call test12(c8_0, c8_2)
  if (c8_2(1) .ne. 0.0) then
     print *, "NG", c8_2(1)
  endif

  print *, "OK"
end program main

