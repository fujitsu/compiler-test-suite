#define N 2048
#define MTYPE real
#define MTYPEFUNC real
#define TKIND 8
#define MASTER 7.986328362603217_TKIND
#define ERR_D (1.0E-14)

subroutine target(a,b,d)
  MTYPE(TKIND),dimension(1:N):: a,b
  MTYPE(TKIND) :: d
  integer::i
  do i=1,N-8
     a(i) = b(i) * d + b(i+8) * d
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


subroutine init(a,b,d)
  MTYPE(TKIND),dimension(1:N):: a,b
  MTYPE(TKIND) :: d
  integer::i
  do i=1,N
     a(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)
     b(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N*N,kind=TKIND)
  end do
  d = MTYPEFUNC(1,kind=TKIND)/MTYPEFUNC(N*N,kind=TKIND)
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
     print *, "NG"
  endif
end subroutine check


program main
  MTYPE(TKIND),dimension(1:N):: a,b
  MTYPE(TKIND) :: d
  MTYPE(TKIND) :: res,mas
  interface
     MTYPE(TKIND) function calcres(a)
       MTYPE(TKIND),dimension(1:N)::a
     end function calcres
  end interface
  call init(a,b,d)
  call target(a,b,d)
  res = calcres(a)
  call master(mas)
  call check(res,mas)
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
