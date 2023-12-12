!
subroutine eval_r8(x,y,z,a)
real   (kind=8) :: x,y,z,a
a = x * y + x * z
end subroutine

subroutine eval_i8(x,y,z,a)
integer(kind=8) :: x,y,z,a
a = x * y - x * z
end subroutine

program main
real   (kind=8) :: r1,r2,r3,a
integer(kind=8) :: i1,i2,i3,d
real   (kind=8),parameter :: r8ans = 14._8
integer(kind=8),parameter :: i8ans = -2_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 2._8
r2 = 3._8
r3 = 4._8
call eval_r8(r1,r2,r3,a)
if (a /= r8ans) then
  mm = .false.
  print *,"ng : ", a, " != ", r8ans
endif

!
i1 = 2_8
i2 = 3_8
i3 = 4_8
call eval_i8(i1,i2,i3,d)
if (d /= i8ans) then
  mm = .false.
  print *,"ng : ", d, " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
