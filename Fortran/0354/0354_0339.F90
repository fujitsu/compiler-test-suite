#define N 4096
#define MTYPE integer
#define MTYPEFUNC int
#define TKIND 8
#define MASTER 25073640
#define ERR_D 0

subroutine target(red, a)
  MTYPE(TKIND) :: red
  MTYPE(TKIND),dimension(1:N):: a
  integer::i
  red = MTYPEFUNC(0,kind=TKIND)
  do i=9, N-8
     red = red + (a(i-8) + a(i) + a(i+8))
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
     src(i) = MTYPEFUNC(i,kind=TKIND)
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
  MTYPE(TKIND),dimension(1:N):: src
  MTYPE(TKIND) :: red,res
  call init(src);
  call target(red,src)
  call master(res)
  call check(red, res)
end  program main

logical function equal_d(a, b)
  MTYPE(TKIND)::a,b
  if ( a.eq.b ) then
     equal_d = .true.
  else 
     equal_d = .false.
  end if
end function equal_d
