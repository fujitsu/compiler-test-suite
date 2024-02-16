module common_objects
integer(kind=4) tcount,acount
common /com0/tcount,acount
real(kind=4) r4i
common /com4/r4i
real(kind=8) r8i
common /com8/r8i
real(kind=16) r16i
common /com16/r16i
real(kind=4) error
common /comerror/error
contains
subroutine init_objects(seed)
  integer(kind=4) seed
  if (seed==1) then
    r4i=0.8
    r8i=0.8
    r16i=0.8
  else if (seed==2) then
    r4i=0.1
    r8i=0.1
    r16i=0.1
  else if (seed==3) then
    r4i=1.0
    r8i=1.0
    r16i=1.0
  endif
  tcount = 0
  acount = 0
  error = 0.000001
end subroutine
end module

module data_objects
use common_objects
real(kind=4)  r4d,r4a(1)
real(kind=8)  r8d,r8a(1)
real(kind=16) r16d,r16a(1)
contains
subroutine print_objects()
  print *,r4d,r4a(1)
  print *,r8d,r8a(1)
  print *,r16d,r16a(1)
end subroutine
subroutine compare_objects(q4,q8,q16)
  real(kind=4)  q4
  real(kind=8)  q8
  real(kind=16) q16
  acount = acount + 1
  if ((abs(q4-real(q8,kind=4))<=error).and.(abs(q4-real(q16,kind=4))<=error)) then
    print *,'ok'
    tcount = tcount + 1
  else
    print *,'ng'
  endif
end subroutine
subroutine print_result()
  if (tcount==acount) then
    print *,'ok'
  else
    print *,'ng'
  endif
end subroutine
end module

program main
use data_objects
call inline_mathlib(1)
call inline_mathlib(2)
call inline_mathlib(3)
call print_result()
contains
subroutine inline_mathlib(seed)
  integer(kind=4) seed
  call init_objects(seed)
  call expf(r4d,r8d,r16d)
  call compare_objects(r4d,r8d,r16d)
  call sqrtf(r4d,r8d,r16d)
  call compare_objects(r4d,r8d,r16d)
  call logf(r4d,r8d,r16d)
  call compare_objects(r4d,r8d,r16d)
  call log10f(r4d,r8d,r16d)
  call compare_objects(r4d,r8d,r16d)
  call sinf(r4d,r8d,r16d)
  call compare_objects(r4d,r8d,r16d)
  call cosf(r4d,r8d,r16d)
  call compare_objects(r4d,r8d,r16d)
  call tanf(r4d,r8d,r16d)
  call compare_objects(r4d,r8d,r16d)
  call expf(r4a(1),r8a(1),r16a(1))
  call compare_objects(r4a(1),r8a(1),r16a(1))
  call sqrtf(r4a(1),r8a(1),r16a(1))
  call compare_objects(r4a(1),r8a(1),r16a(1))
  call logf(r4a(1),r8a(1),r16a(1))
  call compare_objects(r4a(1),r8a(1),r16a(1))
  call log10f(r4a(1),r8a(1),r16a(1))
  call compare_objects(r4a(1),r8a(1),r16a(1))
  call sinf(r4a(1),r8a(1),r16a(1))
  call compare_objects(r4a(1),r8a(1),r16a(1))
  call cosf(r4a(1),r8a(1),r16a(1))
  call compare_objects(r4a(1),r8a(1),r16a(1))
  call tanf(r4a(1),r8a(1),r16a(1))
  call compare_objects(r4a(1),r8a(1),r16a(1))
end subroutine
end program

subroutine expf(q4,q8,q16)
real(kind=4) q4,r4i
real(kind=8) q8,r8i
real(kind=16) q16,r16i
common /com4/r4i
common /com8/r8i
common /com16/r16i
q4 = exp(r4i)
q8 = exp(r8i)
q16 = exp(r8i)
end subroutine

subroutine sqrtf(q4,q8,q16)
real(kind=4) q4,r4i
real(kind=8) q8,r8i
real(kind=16) q16,r16i
common /com4/r4i
common /com8/r8i
common /com16/r16i
q4 = sqrt(r4i)
q8 = sqrt(r8i)
q16 = sqrt(r8i)
end subroutine

subroutine logf(q4,q8,q16)
real(kind=4) q4,r4i
real(kind=8) q8,r8i
real(kind=16) q16,r16i
common /com4/r4i
common /com8/r8i
common /com16/r16i
q4 = log(r4i)
q8 = log(r8i)
q16 = log(r8i)
end subroutine

subroutine log10f(q4,q8,q16)
real(kind=4) q4,r4i
real(kind=8) q8,r8i
real(kind=16) q16,r16i
common /com4/r4i
common /com8/r8i
common /com16/r16i
q4 = log10(r4i)
q8 = log10(r8i)
q16 = log10(r8i)
end subroutine

subroutine sinf(q4,q8,q16)
real(kind=4) q4,r4i
real(kind=8) q8,r8i
real(kind=16) q16,r16i
common /com4/r4i
common /com8/r8i
common /com16/r16i
q4 = sin(r4i)
q8 = sin(r8i)
q16 = sin(r16i)
end subroutine

subroutine cosf(q4,q8,q16)
real(kind=4) q4,r4i
real(kind=8) q8,r8i
real(kind=16) q16,r16i
common /com4/r4i
common /com8/r8i
common /com16/r16i
q4 = cos(r4i)
q8 = cos(r8i)
q16 = cos(r16i)
end subroutine

subroutine tanf(q4,q8,q16)
real(kind=4) q4,r4i
real(kind=8) q8,r8i
real(kind=16) q16,r16i
common /com4/r4i
common /com8/r8i
common /com16/r16i
q4 = tan(r4i)
q8 = tan(r8i)
q16 = tan(r16i)
end subroutine
