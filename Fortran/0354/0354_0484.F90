#define N 1024
#define MTYPE integer
#define MTYPEFUNC int
#define TKIND 4
#define TWKIND 8
#define MASTERF 0.500488281_TKIND
#define MASTERD 0.5004882812500000_TWKIND
#define ERR_D 0

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

subroutine master(res)
  MTYPE(TKIND) :: res
  res = MASTERF
end subroutine master

subroutine masterw(res)
  MTYPE(TWKIND) :: res
  res = MASTERD
end subroutine masterw


subroutine init(src)
  MTYPE(TKIND),dimension(1:N)::src
  integer::i
  do i=1,N
    src(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N*N,kind=TKIND)
  end do
end subroutine init

subroutine initw(src)
  MTYPE(TWKIND),dimension(1:N)::src
  integer::i
  do i=1,N
    src(i) = MTYPEFUNC(i,kind=TWKIND)/MTYPEFUNC(N*N,kind=TWKIND)
  end do
end subroutine initw


subroutine check(red, res)
  MTYPE(TKIND) :: red, res
  if (red .eq. res) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine check

subroutine checkw(red, res)
  MTYPE(TWKIND) :: red, res
  if (red .eq. res) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine checkw

program main
  MTYPE(TKIND),dimension(1:N):: src1
  MTYPE(TWKIND),dimension(1:N):: src2
  MTYPE(TKIND)  :: red1,res1
  MTYPE(TWKIND) :: red2,res2
  call init(src1);
  call initw(src2);
  call target(red1, red2, src1, src2)
  call master(res1)
  call masterw(res2)
  call check(red1, res1)
  call checkw(red2, res2)
end  program main
