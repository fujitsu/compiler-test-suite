#define N 1024
#define RTYPE real
#define RTYPEFUNC real
#define RTKIND 4
#define RMASTER 2047.99792_RTKIND
#define ERR_R (1.0E-6)

#define ITYPE integer
#define ITYPEFUNC int
#define ITKIND 8
#define IMASTER 1573372_ITKIND


subroutine target(a,b,c,d)
  RTYPE(RTKIND),dimension(1:N):: a,b
  ITYPE(ITKIND),dimension(1:N):: c,d
  integer::i
  do i=1, N-2
     a(i) = b(i) + b(i+1)
     c(i) = d(i) + d(i+1) + d(i+2)
  end do
end subroutine target

RTYPE(RTKIND) function calcres_r(a)
  RTYPE(RTKIND),dimension(1:N)::a
  calcres_r = sum(a)
end function

ITYPE(ITKIND) function calcres_i(a)
  ITYPE(ITKIND),dimension(1:N)::a
  calcres_i = sum(a)
end function

subroutine master_r(res)
  RTYPE(RTKIND) :: res
  res = RMASTER
end subroutine master_r

subroutine master_i(res)
  ITYPE(ITKIND) :: res
  res = IMASTER
end subroutine master_i

subroutine init_r(a,b)
  RTYPE(RTKIND),dimension(1:N)::a,b
  integer::i
  do i=1,N
     a(i) = RTYPEFUNC(i,kind=RTKIND)
     b(i) = RTYPEFUNC(i,kind=RTKIND)/RTYPEFUNC(N*N,kind=RTKIND)
  end do
end subroutine init_r

subroutine init_i(c,d)
  ITYPE(ITKIND),dimension(1:N)::c,d
  integer::i
  do i=1,N
     c(i) = ITYPEFUNC(i,kind=ITKIND)
     d(i) = ITYPEFUNC(N-i+1,kind=ITKIND)
  end do
end subroutine init_i

subroutine check_r(res, mas)
  RTYPE(RTKIND) :: res, mas
  interface
     logical function equal_d(a,b)
       RTYPE(RTKIND)::a,b
     end function equal_d
  end interface
  if (equal_d(res, mas)) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine check_r

subroutine check_i(res, mas)
  ITYPE(ITKIND) :: res, mas
  if (res .eq. mas) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine check_i


program main
  RTYPE(RTKIND),dimension(1:N):: a,b
  ITYPE(ITKIND),dimension(1:N):: c,d
  RTYPE(RTKIND) :: rres,rmas
  ITYPE(ITKIND) :: ires,imas
  interface
     RTYPE(RTKIND) function calcres_r(a)
       RTYPE(RTKIND),dimension(1:N)::a
     end function calcres_r
     ITYPE(ITKIND) function calcres_i(n)
       ITYPE(ITKIND),dimension(1:N)::n
     end function calcres_i
  end interface
  call init_r(a,b);
  call init_i(c,d);
  call target(a,b,c,d)
  rres = calcres_r(a)
  call master_r(rmas)
  call check_r(rres,rmas)
  ires = calcres_i(c)
  call master_i(imas)
  call check_i(ires,imas)
end  program main

logical function equal_d(a, b)
  RTYPE(RTKIND)::a,b
  if ( a.eq.b ) then
     equal_d = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. ERR_R) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. ERR_R) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  end if
end function equal_d
