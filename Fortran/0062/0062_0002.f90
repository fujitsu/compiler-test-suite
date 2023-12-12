!
program main
real   (kind=8) :: r1,r2,r3,r4,r5
real   (kind=4) :: q1,q2,q3,q4,q5
integer(kind=8) :: i1,i2,i3,i4,i5
integer(kind=4) :: j1,j2,j3,j4,j5
logical(kind=4) :: mm

mm = .true.

!
r1 = 1._8
r2 = 2._8
r3 = 3._8
r4 = 4._8
r5 = r1 + r2 + r3 + r4
q1 = 1._8
q2 = 2._8
q3 = 3._8
q4 = 4._8
q5 = q1 + q2 + q3 + q4
!
i1 = 1_8
i2 = 2_8
i3 = 3_8
i4 = 4_8
i5 = i1 + i2 + i3 + i4
j1 = 1_8
j2 = 2_8
j3 = 3_8
j4 = 4_8
j5 = j1 + j2 + j3 + j4

if (int(r5,kind=8) /= int(q5,kind=8)) then
   mm = .false.
   print *,"ng : ", r5, " != ", q5
endif
if (int(r5,kind=8) /= int(i5,kind=8)) then
   mm = .false.
   print *,"ng : ", r5, " != ", i5
endif
if (int(r5,kind=8) /= int(j5,kind=8)) then
   mm = .false.
   print *,"ng : ", r5, " != ", j5
endif
if (int(q5,kind=8) /= int(i5,kind=8)) then
   mm = .false.
   print *,"ng : ", q5, " != ", i5
endif
if (int(q5,kind=8) /= int(j5,kind=8)) then
   mm = .false.
   print *,"ng : ", q5, " != ", j5
endif
if (int(i5,kind=8) /= int(j5,kind=8)) then
   mm = .false.
   print *,"ng : ", i5, " != ", j5
endif

if (mm) then
  print *,"ok"
endif
end program
