real*2,parameter::r2(2,2)=1.5_2
real*4,parameter::r4(2,2)=1.5_4
real*8,parameter::r8(2,2)=1.5_8
real*16,parameter::r16(2,2)=1.5_16
real*2::r2_2(2,2)= matmul(r2,r2)
real*4::r4_1(2,2)= matmul(r2,r4)
real*8::r8_1(2,2)= matmul(r8,r2)
real*16::r16_1(2,2)= matmul(r16,r2)
if( any(r2_2 /= RESHAPE([4.5_2, 4.5_2, 4.5_2, 4.5_2],[2,2] )))print*,"101"
if( any(r4_1 /= RESHAPE([4.5, 4.5, 4.5, 4.5],[2,2] )))print*,"102"
if( any(r8_1 /= RESHAPE([4.5_8, 4.5_8, 4.5_8, 4.5_8],[2,2] )))print*,"103"
if( any(r16_1 /= RESHAPE([4.5_16, 4.5_16, 4.5_16, 4.5_16],[2,2] )))print*,"104"

print*,"PASS"

end
