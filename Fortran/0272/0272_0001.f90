complex(2) :: cmp=(8,9)

integer(1) :: i1=10
integer(2) :: i2=20
integer(4) :: i4=30
integer(8) :: i8=40

real(2) :: r2=1.0
real(4) :: r4=2.0
real(8) :: r8=3.0
real(16) :: r16=4.0

complex(4) :: c4=(2,3)
complex(8) :: c8=(4,5)
complex(16) :: c16=(6,7)

if(abs(cmp/i1 -((8,9)/10))>0.1)print*,"101",real(cmp/i1,4),((8,9)/10)
if(abs(i2/cmp -(20/(8,9)))>0.1)print*,"102"
if(abs(cmp/i4 -((8,9)/30))>0.1)print*,"103"
if(abs(i8/cmp -(40/(8,9)))>0.1)print*,"104"

if(abs(cmp/r2 -((8,9)/1.0))>0.1)print*,"105"
if(abs(r4/cmp -(2.0/(8,9)))>0.1)print*,"106"
if(abs(cmp/r8 -((8,9)/3))>0.1)print*,"107"
if(abs(r16/cmp -(4.0/(8,9)))>0.1)print*,"108"

if(abs(cmp/cmp -((8,9)/(8,9)))>0.1)print*,"109"
if(abs(cmp/c4 -((8,9)/(2,3)))>0.1)print*,"110"
if(abs(c8/cmp -((4,5)/(8,9)))>0.1)print*,"111"
if(abs(cmp/c16 -((8,9)/(6,7)))>0.1)print*,"112"

print*,"pass"
end


