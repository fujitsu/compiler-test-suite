#define N 2048
#define MTYPE integer
#define MTYPEFUNC int
#define TKIND 4
#define MASTER 8396787_TKIND
#define ERR_D 0

subroutine target(a,b,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,&
     d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,&
     d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,&
     d31)
  MTYPE(TKIND),dimension(1:N) :: a,b
  MTYPE(TKIND),dimension(1:N) :: d1,d2,d3,d4,d5,d6,d7,d8,d9,d10
  MTYPE(TKIND),dimension(1:N) :: d11,d12,d13,d14,d15,d16,d17,d18,d19,d20
  MTYPE(TKIND),dimension(1:N) :: d21,d22,d23,d24,d25,d26,d27,d28,d29,d30
  MTYPE(TKIND),dimension(1:N) :: d31
  integer::i
  do i=1,N-2
     a(i) = b(i) * (d1(i) + d2(i) + d3(i) + d4(i) + d5(i) &
          + d6(i) + d7(i) + d8(i) + d9(i) + d10(i) &
          + d11(i) + d12(i) + d13(i) + d14(i) + d15(i)) &
          + b(i+2) * (d16(i) + d17(i) + d18(i) + d19(i) + d20(i) &
          + d21(i) + d22(i) + d23(i) + d24(i) + d25(i) &
          + d26(i) + d27(i) + d28(i) + d29(i) + d30(i) + d31(i))
  end do
end subroutine target

MTYPE(TKIND) function calcres(a)
  MTYPE(TKIND),dimension(1:N)::a
  calcres = sum(a)
end function

subroutine master(res)
  MTYPE(TKIND) :: res
  res = MASTER
end subroutine master


subroutine init(a,b,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,&
     d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,&
     d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,&
     d31)
  MTYPE(TKIND),dimension(1:N) :: a,b
  MTYPE(TKIND),dimension(1:N) :: d1,d2,d3,d4,d5,d6,d7,d8,d9,d10
  MTYPE(TKIND),dimension(1:N) :: d11,d12,d13,d14,d15,d16,d17,d18,d19,d20
  MTYPE(TKIND),dimension(1:N) :: d21,d22,d23,d24,d25,d26,d27,d28,d29,d30
  MTYPE(TKIND),dimension(1:N) :: d31
  integer::i
  do i=1,N
     a(i) = MTYPEFUNC(i,kind=TKIND)
     b(i) = MTYPEFUNC(N-i+1,kind=TKIND)
  end do
  d1 = MTYPEFUNC(1,kind=TKIND)
  d2 = MTYPEFUNC(2,kind=TKIND)
  d3 = d1
  d4 = d2
  d5 = -d1
  d6 = -d2
  d7 = d1
  d8 = d2
  d9 = -d1
  d10 = -d2
  d11 = d1
  d12 = d2
  d13 = -d1
  d14 = -d2
  d15 = d1
  d16 = d2
  d17 = -d1
  d18 = -d2
  d19 = d1
  d20 = d2
  d21 = -d1
  d22 = -d2
  d23 = d1
  d24 = d2
  d25 = -d1
  d26 = -d2
  d27 = d1
  d28 = d2
  d29 = -d1
  d30 = -d2
  d31 = d1
end subroutine init


subroutine check(res, mas)
  MTYPE(TKIND) :: res, mas
  interface
     logical function equal_d(a,b)
       MTYPE(TKIND)::a,b
     end function equal_d
  end interface


  if (equal_d(res, mas)) then
     print *, "OK"
  else
     print *,res,mas
     print *, "NG"
  endif
end subroutine check


program main
  MTYPE(TKIND),dimension(1:N) :: a,b
  MTYPE(TKIND),dimension(1:N) :: d1,d2,d3,d4,d5,d6,d7,d8,d9,d10
  MTYPE(TKIND),dimension(1:N) :: d11,d12,d13,d14,d15,d16,d17,d18,d19,d20
  MTYPE(TKIND),dimension(1:N) :: d21,d22,d23,d24,d25,d26,d27,d28,d29,d30
  MTYPE(TKIND),dimension(1:N) :: d31
  MTYPE(TKIND) :: res,mas
  interface
     MTYPE(TKIND) function calcres(a)
       MTYPE(TKIND),dimension(1:N)::a
     end function calcres
  end interface
  call init(a,b,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,&
       d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,&
       d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,&
       d31);
  call target(a,b,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,&
       d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,&
       d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,&
       d31)
  res = calcres(a)
  call master(mas)
  call check(res,mas)
end  program main

logical function equal_d(a, b)
  MTYPE(TKIND)::a,b
  if ( a.eq.b ) then
     equal_d = .true.
  else
     equal_d = .false.
  end if
end function equal_d
