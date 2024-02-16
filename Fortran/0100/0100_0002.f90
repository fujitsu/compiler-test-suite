complex(kind=2),parameter::c4=(12.5_2,2.5_2)
integer*1::i1
integer*2::i2
integer*4::i4
integer*8::i8

i1 = c4
if(i1 /= 12) print*,"101"
i2 = c4
if(i2 /= 12) print*,"102"
i4 = c4
if(i4 /= 12) print*,"103"
i8 = c4
if(i8 /= 12) print*,"104"
print*,"pass"

end
