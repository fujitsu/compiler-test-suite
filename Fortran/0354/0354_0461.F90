#define N 1024
#define MTYPE complex
#define MTYPEFUNC cmplx
#define ELM_MTYPE real
#define ELM_MTYPEFUNC1 real
#define ELM_MTYPEFUNC2 imag
#define TKIND 4
#define MASTER MTYPEFUNC(0.999999046_TKIND,0.999999046_TKIND)
#define ERR_D (1.0E-6)

subroutine target(a,b)
  MTYPE(TKIND),dimension(1:N):: a,b
  integer::i
  do i=1, N-1
     a(i) = b(i) + b(i+1)
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
     a(i) = MTYPEFUNC(ELM_MTYPEFUNC1(0,kind=TKIND),ELM_MTYPEFUNC1(0,kind=TKIND))
     b(i) = MTYPEFUNC(ELM_MTYPEFUNC1(i,kind=TKIND)/ELM_MTYPEFUNC1(N*N,kind=TKIND),ELM_MTYPEFUNC1(N-i+1,kind=TKIND)/ELM_MTYPEFUNC1(N*N,kind=TKIND))
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
  interface
     logical function elm_equal_d(a,b)
       ELM_MTYPE(TKIND)::a,b
     end function elm_equal_d
  end interface
  equal_d = (elm_equal_d(ELM_MTYPEFUNC1(a), ELM_MTYPEFUNC1(b))) .and. (elm_equal_d(ELM_MTYPEFUNC2(a), ELM_MTYPEFUNC2(b)))
end function equal_d

logical function elm_equal_d(a, b)
  ELM_MTYPE(TKIND)::a,b
  if ( a.eq.b ) then
     elm_equal_d = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. ERR_D) then
        elm_equal_d = .true.
     else
        elm_equal_d = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. ERR_D) then
        elm_equal_d = .true.
     else
        elm_equal_d = .false.
     end if
  end if
end function elm_equal_d
