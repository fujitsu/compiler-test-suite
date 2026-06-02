#define N 1024
#define MTYPE real
#define MTYPEFUNC real
#define TKIND 4
#define MASTER 0.500488281_TKIND
#define ERR_D (1.0E-6)

subroutine target(red1,red2,red3,src1,src2,src3)
  MTYPE(TKIND) :: red1,red2,red3
  MTYPE(TKIND),dimension(1:N):: src1,src2,src3
  integer::i
  red1 = MTYPEFUNC(0,kind=TKIND)
  red2 = MTYPEFUNC(0,kind=TKIND)
  red3 = MTYPEFUNC(0,kind=TKIND)
  do i=1, N
     red1 = red1 + src1(i)
     red2 = red2 + src2(i)
     red3 = red3 + src3(i)
  end do
end subroutine target

subroutine master(res)
  MTYPE(TKIND) :: res
  res = MASTER
end subroutine master


subroutine init(src)
  MTYPE(TKIND),dimension(1:N)::src
  integer::i
  do i=1,N
     src(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N*N,kind=TKIND)
  end do
end subroutine init


subroutine check(red, res)
  MTYPE(TKIND) :: red, res
  interface
     logical function equal_d(a,b)
       MTYPE(TKIND)::a,b
     end function equal_d
  end interface
  if (equal_d(red, res)) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine check


program main
  MTYPE(TKIND),dimension(1:N):: src1,src2,src3
  MTYPE(TKIND) :: red1,red2,red3,res
  call init(src1);
  call init(src2);
  call init(src3);
  call target(red1, red2, red3, src1, src2, src3)
  call master(res)
  call check(red1, res)
  call check(red2, res)
  call check(red3, res)
end  program main

logical function equal_d(a, b)
  MTYPE(TKIND)::a,b
  if ( a.eq.b ) then
     equal_d = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. ERR_D) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. ERR_D) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  end if
end function equal_d
