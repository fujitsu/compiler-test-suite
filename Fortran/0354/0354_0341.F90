#define N 1024
#define MTYPE logical
#define MTYPEFUNC int
#define TKIND 4
#define MASTER .true.
#define ERR_D 0
#define MTYPE_EQUAL .eqv.

subroutine target(a,b)
  MTYPE(TKIND),dimension(1:N):: a,b
  integer::i
  do i=1, N-1
     a(i) = b(i) .and. b(i+1)
  end do
end subroutine target

MTYPE(TKIND) function calcres(a)
  MTYPE(TKIND),dimension(1:N)::a
  calcres = any(a)
end function

subroutine master(res)
  MTYPE(TKIND) :: res
  res = MASTER
end subroutine master


subroutine init(a,b)
  MTYPE(TKIND),dimension(1:N)::a,b
  integer::i
  do i=1,N
     if (mod(i,2) .eq. 0) then
        a(i) = .true.
        b(i) = .true.
     else
        a(i) = .false.
        b(i) = .false.
     endif
  end do
end subroutine init


subroutine check(res, mas)
  MTYPE(TKIND) :: res, mas
  if (res MTYPE_EQUAL mas) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine check


program main
  MTYPE(TKIND),dimension(1:N):: a,b
  MTYPE(TKIND) :: res,mas
  interface
     logical function calcres(a)
       MTYPE(TKIND),dimension(1:N)::a
     end function calcres
  end interface
  call init(a,b)
  call target(a,b)
  res = calcres(a)
  call master(mas)
  call check(res,mas)
end  program main
