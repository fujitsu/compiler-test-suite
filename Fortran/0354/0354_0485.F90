#define N 1024
#define RTYPE real
#define RTYPEFUNC real
#define ITYPE integer
#define ITYPEFUNC int
#define TKIND 4
#define TWKIND 8
#define MASTERR 0.500488281_TKIND
#define MASTERI 524800_TWKIND
#define ERR_R (1.0E-6)

subroutine target(red1, red2, src1, src2)
  RTYPE(TKIND) :: red1
  ITYPE(TWKIND) :: red2
  RTYPE(TKIND),dimension(1:N):: src1
  ITYPE(TWKIND),dimension(1:N):: src2
  integer::i
  red1 = RTYPEFUNC(0,kind=TKIND)
  red2 = ITYPEFUNC(0,kind=TWKIND)
  do i=1, N
     red1 = red1 + src1(i)
     red2 = red2 + src2(i)
  end do
end subroutine target

subroutine masterr(res)
  RTYPE(TKIND) :: res
  res = MASTERR
end subroutine masterr

subroutine masteri(res)
  ITYPE(TWKIND) :: res
  res = MASTERI
end subroutine masteri


subroutine initr(src)
  RTYPE(TKIND),dimension(1:N)::src
  integer::i
  do i=1,N
    src(i) = RTYPEFUNC(i,kind=TKIND)/RTYPEFUNC(N*N,kind=TKIND)
  end do
end subroutine initr

subroutine initi(src)
  ITYPE(TWKIND),dimension(1:N)::src
  integer::i
  do i=1,N
    src(i) = ITYPEFUNC(i,kind=TWKIND)
  end do
end subroutine initi


subroutine checkr(red, res)
  RTYPE(TKIND) :: red, res
  interface
     logical function equal_d(a,b)
       RTYPE(TKIND)::a,b
     end function equal_d
  end interface
  if (equal_d(red, res)) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine checkr

subroutine checki(red, res)
  ITYPE(TWKIND) :: red, res
  if (red .eq. res) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine checki


program main
  RTYPE(TKIND),dimension(1:N):: src1
  ITYPE(TWKIND),dimension(1:N):: src2
  RTYPE(TKIND)  :: red1,res1
  ITYPE(TWKIND) :: red2,res2
  call initr(src1);
  call initi(src2);
  call target(red1, red2, src1, src2)
  call masterr(res1)
  call masteri(res2)
  call checkr(red1, res1)
  call checki(red2, res2)
end  program main

logical function equal_d(a, b)
  RTYPE(TKIND)::a,b
  if ( a.eq.b ) then
     equal_d = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. ERR_R) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. ERR_R) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  end if
end function equal_d
