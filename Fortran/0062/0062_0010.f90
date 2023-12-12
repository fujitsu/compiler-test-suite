!
module mod
type stc
  integer(kind=2) dummy1
  integer(kind=2) i2
  integer(kind=4) i4
  integer(kind=8) i8
  real(kind=4)    dummy2
  real(kind=4)    r4
  real(kind=8)    r8
  real(kind=16)   r16
end type stc
end module

subroutine inline_struct(x)
  use mod
  type(stc) x
  if (x%i2 < 0)  x%i2  = 0
  if (x%i4 < 0)  x%i4  = 0
  if (x%i8 < 0)  x%i8  = 0
  if (x%r4 < 0)  x%r4  = 0
  if (x%r8 < 0)  x%r8  = 0
  if (x%r16 < 0) x%r16 = 0
end subroutine

subroutine construct_stc(x)
  use mod
  type(stc) x
  x%i2 = 2
  x%i4 = 4
  x%i8 = 8
  x%r4 = 4
  x%r8 = 8
  x%r16 = 16
end subroutine

subroutine copy_stc(x,y)
  use mod
  type(stc) x,y
  y%i2 = x%i2
  y%i4 = x%i4
  y%i8 = x%i8
  y%r4 = x%r4
  y%r8 = x%r8
  y%r16 = x%r16
end subroutine

logical(kind=1) function is_same_struct(x,y)
  use mod
  type(stc) x,y
  if ((x%i2 == y%i2) .and. (x%i4 == y%i4) .and. (x%i8 == y%i8) .and. (x%r4 == y%r4) .and. (x%r8 == y%r8) .and. (x%r16 == y%r16)) then
    is_same_struct = .true.
  else
    is_same_struct = .false.
  endif
end function

program main
  use mod
  type(stc) x, y
  logical(kind=1) is_same_struct
  call construct_stc(x)
  call copy_stc(x,y)
  call inline_struct(x)
  if (is_same_struct(x,y)) then
     print *,"ok"
  else
     print *,"ng"
  endif
end program
