#define N 1024
#define MTYPE real
#define MTYPEFUNC real
#define TKIND 4
#define MASTER 1392.90173_TKIND
#define ERR_D (1.0E-6)

subroutine target(red,src1,src2,src3,src4,src5,src6,src7,src8)
  MTYPE(TKIND) :: red
  MTYPE(TKIND),dimension(1:N):: src1,src2,src3,src4,src5,src6,src7,src8
  integer::i
  red = MTYPEFUNC(0,kind=TKIND)
  do i=1, N
     red = red + (((src1(i) + src2(i)) + (src3(i) + src4(i))) + ((src5(i) + src6(i)) + (src7(i) + src8(i))))
  end do
end subroutine target

subroutine master(res)
  MTYPE(TKIND) :: res
  res = MASTER
end subroutine master


subroutine init(src1,src2,src3,src4,src5,src6,src7,src8)
  MTYPE(TKIND),dimension(1:N):: src1,src2,src3,src4,src5,src6,src7,src8
  integer::i
  do i=1,N
    src1(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)/1
    src2(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)/2
    src3(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)/3
    src4(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)/4
    src5(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)/5
    src6(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)/6
    src7(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)/7
    src8(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)/8
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
  MTYPE(TKIND),dimension(1:N):: src1,src2,src3,src4,src5,src6,src7,src8
  MTYPE(TKIND) :: red,res
  call init(src1,src2,src3,src4,src5,src6,src7,src8);
  call target(red,src1,src2,src3,src4,src5,src6,src7,src8)
  call master(res)
  call check(red, res)
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
