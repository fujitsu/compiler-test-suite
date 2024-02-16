
real*2,parameter::r2=1.5_2
real*4,parameter::r4=1.5_4
real*8,parameter::r8=1.5_8
real*16,parameter::r16=1.5_16
integer*1,parameter::i1=10
integer*2,parameter::i2=20
integer*4,parameter::i4=40

if(kind((r2,r4)) /= 4)print*,"101"
if(kind((r8,r2)) /= 8)print*,"102"
if(kind((r2,r2)) /= 2)print*,"104"
if(kind((i1,r2)) /= 2)print*,"105"
if(kind((r2,i1)) /= 2)print*,"106"
if(kind((r2,i4)) /= 2)print*,"106"
if(kind((i4,r2)) /= 2)print*,"107"
if(kind((i2,r2)) /= 2)print*,"108"
if(kind((r2,i2)) /= 2)print*,"109"
print*,"pass"
end
