#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 129
#else
#define N 128
#endif

#define DISTANCE 2
#define ETYPE_R8 real(8)
#define ETYPE_R4 real(4)
#define ETYPE_I8 integer(8)
#define ETYPE_I4 integer(4)
#define ETYPE_I2 integer(2)
#define ETYPE_I1 integer(1)
#define ETYPE_C8 complex(8)
#define ETYPE_C4 complex(4)
subroutine sub_r8(a,b,c,n)
  ETYPE_R8,dimension(DISTANCE,n) :: a,b,c
  do i=1,n
     a(1,i) = b(1,i) + c(1,i)
     a(2,i) = b(2,i) + c(2,i)
  end do
end subroutine sub_r8

subroutine sub_r4(a,b,c,n)
  ETYPE_R4,dimension(DISTANCE,n) :: a,b,c
  do i=1,n
     a(1,i) = b(1,i) + c(1,i)
     a(2,i) = b(2,i) + c(2,i)
  end do
end subroutine sub_r4

subroutine sub_i8(a,b,c,n)
  ETYPE_I8,dimension(DISTANCE,n) :: a,b,c
  do i=1,n
     a(1,i) = b(1,i) + c(1,i)
     a(2,i) = b(2,i) + c(2,i)
  end do
end subroutine sub_i8

subroutine sub_i4(a,b,c,n)
  ETYPE_I4,dimension(DISTANCE,n) :: a,b,c
  do i=1,n
     a(1,i) = b(1,i) + c(1,i)
     a(2,i) = b(2,i) + c(2,i)
  end do
end subroutine sub_i4

subroutine sub_i2(a,b,c,n)
  ETYPE_I2,dimension(DISTANCE,n) :: a,b,c
  do i=1,n
     a(1,i) = b(1,i) + c(1,i)
     a(2,i) = b(2,i) + c(2,i)
  end do
end subroutine sub_i2

subroutine sub_i1(a,b,c,n)
  ETYPE_I1,dimension(DISTANCE,n) :: a,b,c
  do i=1,n
     a(1,i) = b(1,i) + c(1,i)
     a(2,i) = b(2,i) + c(2,i)
  end do
end subroutine sub_i1

subroutine sub_c8(a,b,c,n)
  ETYPE_C8,dimension(DISTANCE,n) :: a,b,c
  do i=1,n
     a(1,i) = b(1,i) + c(1,i)
     a(2,i) = b(2,i) + c(2,i)
  end do
end subroutine sub_c8

subroutine sub_c4(a,b,c,n)
  ETYPE_C4,dimension(DISTANCE,n) :: a,b,c
  do i=1,n
     a(1,i) = b(1,i) + c(1,i)
     a(2,i) = b(2,i) + c(2,i)
  end do
end subroutine sub_c4


program main
  ETYPE_R8, dimension(DISTANCE,N) :: a1,b1,c1
  ETYPE_R4, dimension(DISTANCE,N) :: a2,b2,c2

  ETYPE_I8, dimension(DISTANCE,N) :: a4,b4,c4
  ETYPE_I4, dimension(DISTANCE,N) :: a5,b5,c5
  ETYPE_I2, dimension(DISTANCE,N) :: a6,b6,c6
  ETYPE_I1, dimension(DISTANCE,N) :: a7,b7,c7
  ETYPE_C8, dimension(DISTANCE,N) :: a8,b8,c8
  ETYPE_C4, dimension(DISTANCE,N) :: a9,b9,c9

  a1 = 0.
  a2 = 0.
  a4 = 0
  a5 = 0
  a6 = 0
  a7 = 0
  a8 = 0.
  a9 = 0.

  b1 = 1.
  b2 = 1.
  b4 = 1
  b5 = 1
  b6 = 1
  b7 = 1
  b8 = cmplx(1._8,1._8)
  b9 = cmplx(1._4,1._4)
  
  c1 = 2.
  c2 = 2.
  c4 = 2
  c5 = 2
  c6 = 2
  c7 = 2
  c8 = cmplx(2._8,2._8)
  c9 = cmplx(2._4,2._4)

  call sub_r8(a1,b1,c1,N)
  call sub_r4(a2,b2,c2,N)
  call sub_i8(a4,b4,c4,N)
  call sub_i4(a5,b5,c5,N)
  call sub_i2(a6,b6,c6,N)
  call sub_i1(a7,b7,c7,N)
  call sub_c8(a8,b8,c8,N)
  call sub_c4(a9,b9,c9,N)
  
  if (sum(a1) .ne. (sum(b1) + sum(c1))) then
     print *, "NG"
  endif
  if (sum(a2) .ne. (sum(b2) + sum(c2))) then
     print *, "NG"
  endif
  if (sum(a4) .ne. (sum(b4) + sum(c4))) then
     print *, "NG"
  endif
  if (sum(a5) .ne. (sum(b5) + sum(c5))) then
     print *, "NG"
  endif
  if (sum(a6) .ne. (sum(b6) + sum(c6))) then
     print *, "NG"
  endif
  if (sum(a7) .ne. (sum(b7) + sum(c7))) then
     print *, "NG"
  endif
  if (sum(a8) .ne. (sum(b8) + sum(c8))) then
     print *, "NG"
  endif
  if (sum(a9) .ne. (sum(b9) + sum(c9))) then
     print *, "NG"
  endif
  print *, "OK"
end program main


