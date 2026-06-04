#define N 1024
#define MTYPE real
#define MTYPEFUNC real
#define TKIND 4
#define MASTER 471.151276_TKIND
#define ERR_D (1.0E-6)

pure MTYPE(TKIND) function foo(r)
  MTYPE(TKIND),intent(in) :: r
  foo = sin(r)
end function foo
  
subroutine target(red, src)
  MTYPE(TKIND) :: red,foo
  MTYPE(TKIND),dimension(1:N):: src
  integer::i
  red = MTYPEFUNC(0,kind=TKIND)
  do i=1, N
     red = red + foo(src(i))
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
    src(i) = MTYPEFUNC(i,kind=TKIND)/MTYPEFUNC(N,kind=TKIND)
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
  call target(red, src)
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
