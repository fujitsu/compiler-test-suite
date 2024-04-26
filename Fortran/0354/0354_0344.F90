#define N 1024
#define MTYPE logical
#define MTYPEFUNC logical
#define TKIND 4
#define MASTER .true.
#define ERR_D 0
#define MTYPE_EQUAL .eqv.

subroutine target(red, src)
  MTYPE(TKIND) :: red
  MTYPE(TKIND),dimension(1:N):: src
  integer::i
  red = .not.(MASTER)
  do i=1, N
     red = red .or. src(i)
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
     src(i) = MTYPEFUNC(i.ne.0, kind=TKIND)
  end do
end subroutine init


subroutine check(red, res)
  MTYPE(TKIND) :: red, res
  if (red MTYPE_EQUAL res) then
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
