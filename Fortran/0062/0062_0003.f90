!
real(kind=8) function cse_r8(x,y)
real   (kind=8) :: x,y,z1,z2
z1 = x + y
z2 = x + y
cse_r8 = z1+z2
end function

integer(kind=8) function cse_i8(x,y)
integer(kind=8) :: x,y,z1,z2
z1 = x + y
z2 = x + y
cse_i8 = z1+z2
end function

program main
real   (kind=8) :: r1,r2,cse_r8,r8res
integer(kind=8) :: i1,i2,cse_i8,i8res
real   (kind=8),parameter :: r8ans = 10._8
integer(kind=8),parameter :: i8ans = 10_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 2._8
r2 = 3._8
r8res = cse_r8(r1,r2)
if (r8res /= r8ans) then
  mm = .false.
  print *,"ng : ", r8res, " != ", r8ans
endif

!
i1 = 2_8
i2 = 3_8
i8res = cse_i8(i1,i2)
if (i8res /= i8ans) then
  mm = .false.
  print *,"ng : ", i8res, " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
