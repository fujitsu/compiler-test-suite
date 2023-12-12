!
subroutine branch_opt_r8(x,y,z)
real   (kind=8) :: x,y,z,t
t = 0._8
30 continue
if (x == y) then
  t = x + y
endif
if (x == y) then
  t = x + y
  goto 20
endif
  t = 1._8
20 continue
if (x == y) then
  goto 40
endif
  goto 30
40 continue
z = t - (x + y)
end subroutine

subroutine branch_opt_i8(x,y,z)
integer(kind=8) :: x,y,z,t
t = 0_8
30 continue
if (x == y) then
  t = x + y
  goto 10
endif
if (x == y) then
  t = x + y
  goto 20
endif
10 continue
20 continue
if (x == y) then
  goto 40
endif
  goto 30
40 continue
z = t - (x + y)
end subroutine

program main
real   (kind=8) :: r1,r2,r3
integer(kind=8) :: i1,i2,i3
real   (kind=8),parameter :: r8ans = 0._8
integer(kind=8),parameter :: i8ans = 0_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 2._8
r2 = 2._8
r3 = 4._8
call branch_opt_r8(r1,r2,r3)
if (r3 /= r8ans) then
  mm = .false.
  print *,"ng : ", r3, " != ", r8ans
endif

!
i1 = 2_8
i2 = 2_8
i3 = 4_8
call branch_opt_i8(i1,i2,i3)
if (i3 /= i8ans) then
  mm = .false.
  print *,"ng : ", i3, " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
