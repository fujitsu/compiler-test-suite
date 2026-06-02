#define N 1024
#define MTYPE real
#define MTYPEFUNC real
#define TKIND 4
#define TWKIND 8
#define MASTERF 0.500488281_TKIND
#define MASTERD 0.5004882812500000_TWKIND
#define ERR_DF (1.0E-6)
#define ERR_DD (1.0E-14)

subroutine target(red1, red2, src1, src2)
  MTYPE(TKIND) :: red1
  MTYPE(TWKIND) :: red2
  MTYPE(TKIND),dimension(1:N):: src1
  MTYPE(TWKIND),dimension(1:N):: src2
  integer::i
  red1 = MTYPEFUNC(0,kind=TKIND)
  red2 = MTYPEFUNC(0,kind=TWKIND)
  do i=1, N
     red1 = red1 + src1(i)
     red2 = red2 + src2(i)
  end do
end subroutine target

subroutine masterf(res)
  MTYPE(TKIND) :: res
  res = MASTERF
end subroutine masterf

subroutine masterd(res)
  MTYPE(TWKIND) :: res
  res = MASTERD
end subroutine masterd


subroutine initf(src)
  MTYPE(TKIND),dimension(1:N)::src
  integer::i
  do i=1,N
    src(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N*N,kind=TKIND)
  end do
end subroutine initf

subroutine initd(src)
  MTYPE(TWKIND),dimension(1:N)::src
  integer::i
  do i=1,N
    src(i) = MTYPEFUNC(i,kind=TWKIND)/MTYPEFUNC(N*N,kind=TWKIND)
  end do
end subroutine initd


subroutine checkf(red, res)
  MTYPE(TKIND) :: red, res
  interface
     logical function equal_df(a,b)
       MTYPE(TKIND)::a,b
     end function equal_df
  end interface
  if (equal_df(red, res)) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine checkf

subroutine checkd(red, res)
  MTYPE(TWKIND) :: red, res
  interface
     logical function equal_dd(a,b)
       MTYPE(TWKIND)::a,b
     end function equal_dd
  end interface
  if (equal_dd(red, res)) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine checkd


program main
  MTYPE(TKIND),dimension(1:N):: src1
  MTYPE(TWKIND),dimension(1:N):: src2
  MTYPE(TKIND)  :: red1,res1
  MTYPE(TWKIND) :: red2,res2
  call initf(src1);
  call initd(src2);
  call target(red1, red2, src1, src2)
  call masterf(res1)
  call masterd(res2)
  call checkf(red1, res1)
  call checkd(red2, res2)
end  program main

logical function equal_df(a, b)
  MTYPE(TKIND)::a,b
  if ( a.eq.b ) then
     equal_df = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. ERR_DF) then
        equal_df = .true.
     else
        equal_df = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. ERR_DF) then
        equal_df = .true.
     else
        equal_df = .false.
     end if
  end if
end function equal_df

logical function equal_dd(a, b)
  MTYPE(TWKIND)::a,b
  if ( a.eq.b ) then
     equal_dd = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. ERR_DD) then
        equal_dd = .true.
     else
        equal_dd = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. ERR_DD) then
        equal_dd = .true.
     else
        equal_dd = .false.
     end if
  end if
end function equal_dd
