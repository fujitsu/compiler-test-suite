#define N 1024
#define MTYPE real
#define MTYPEFUNC real
#define RKIND 16
#define MASTER 0.50048828125000000000000000000000000_RKIND
#define ERR_D (1.0E-32)

subroutine target(red, src)
  MTYPE(RKIND) :: red
  MTYPE(RKIND),dimension(1:N):: src
  integer::i
  red = MTYPEFUNC(0,kind=RKIND)
  do i=1, N
     red = red + src(i)
  end do
end subroutine target

subroutine master(res)
  MTYPE(RKIND) :: res
  res = MASTER
end subroutine master


subroutine init(src)
  MTYPE(RKIND),dimension(1:N)::src
  integer::i
  do i=1,N
     src(i) = MTYPEFUNC(i,kind=RKIND)/MTYPEFUNC(N*N,kind=RKIND)
  end do
end subroutine init


subroutine check(red, res)
  MTYPE(RKIND) :: red, res
  interface
     logical function equal_d(a,b)
       MTYPE(RKIND)::a,b
     end function equal_d
  end interface
  if (equal_d(red, res)) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine check


program main
  MTYPE(RKIND),dimension(1:N):: src
  MTYPE(RKIND) :: red,res
  call init(src);
  call target(red, src)
  call master(res)
  call check(red, res)
end  program main

logical function equal_d(a, b)
  MTYPE(RKIND)::a,b
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
