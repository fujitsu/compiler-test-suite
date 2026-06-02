#define N 1024
#define MTYPE integer
#define MTYPEFUNC int
#define TKIND 8
#define MASTER 1049594_TKIND
#define ERR_D 0

subroutine target(a,b)
  MTYPE(TKIND),dimension(1:N):: a,b
  integer::i
  do i=1, N-3
     a(i) = b(i) + b(i+3)
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


subroutine init(a,b)
  MTYPE(TKIND),dimension(1:N)::a,b
  integer::i
  do i=1,N
     a(i) = MTYPEFUNC(i,kind=TKIND)
     b(i) = MTYPEFUNC(N-i+1,kind=TKIND)
  end do
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
  MTYPE(TKIND) :: res,mas
  interface
     MTYPE(TKIND) function calcres(a)
       MTYPE(TKIND),dimension(1:N)::a
     end function calcres
  end interface
  call init(a,b);
  call target(a,b)
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
