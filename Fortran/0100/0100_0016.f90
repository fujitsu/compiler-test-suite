real*2,parameter::r2=12.5_2
integer*1::i1
integer*2::i2
integer*4::i4
integer*8::i8

i1 = r2
if(i1 /= 12) print*,"101"
i2 = r2
if(i2 /= 12) print*,"102"
i4 = r2
if(i4 /= 12) print*,"103"
i8 = r2
if(i8 /= 12) print*,"104"
print*,"pass"

end
