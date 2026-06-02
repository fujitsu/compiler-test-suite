#define N 2048
#define MTYPE real
#define MTYPEFUNC real
#define TKIND 8
#define MASTER 25.46848440170288_TKIND
#define ERR_D (1.0E-14)

subroutine target(a,b,c,d,e,f)
  MTYPE(TKIND),dimension(1:N):: a,b,c,d,e,f
  integer::i
  do i=7,N-6
     a(i) = b(i-3) + b(i) + b(i+3)
     c(i) = d(i-6) + d(i-4) + d(i-2) + d(i) + d(i+2) + d(i+4) + d(i+6)
     e(i) = f(i-2) + f(i-1) + f(i) + f(i+1) + f(i+2)
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


subroutine init(a,b,c,d,e,f)
  MTYPE(TKIND),dimension(1:N)::a,b,c,d,e,f
  integer::i
  do i=1,N
     a(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)
     b(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N*N,kind=TKIND)
     c(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)
     d(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N*N,kind=TKIND)
     e(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)
     f(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N*N,kind=TKIND)
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
  MTYPE(TKIND),dimension(1:N):: a,b,c,d,e,f
  MTYPE(TKIND) :: res,mas
  interface
     MTYPE(TKIND) function calcres(a)
       MTYPE(TKIND),dimension(1:N)::a
     end function calcres
  end interface
  call init(a,b,c,d,e,f);
  call target(a,b,c,d,e,f)
  res = calcres(a) + calcres(c) + calcres(e)
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
