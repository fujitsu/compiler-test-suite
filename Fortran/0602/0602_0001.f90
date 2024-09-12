real*2,parameter::r2(2,2)=1.5_2
integer*1,parameter::i1(2,2)=10_1
integer*2,parameter::i2(2,2)=10_2
integer*4,parameter::i4(2,2)=10_4
integer*8,parameter::i8(2,2)=10_8
real*2::r2_2(2,2)= matmul(r2,i2)
real*2::r2_3(2,2)= matmul(i1,r2)
real*2::r2_4(2,2)= matmul(i4,r2)
real*2::r2_5(2,2)= matmul(r2,i8)


if( any(r2_2 /= RESHAPE([30.0_2, 30.0_2, 30.0_2, 30.0_2],[2,2] )))print*,"101"
if( any(r2_3 /= RESHAPE([30.0_2, 30.0_2, 30.0_2, 30.0_2],[2,2] )))print*,"102"
if( any(r2_4 /= RESHAPE([30.0_2, 30.0_2, 30.0_2, 30.0_2],[2,2] )))print*,"103"
if( any(r2_5 /= RESHAPE([30.0_2, 30.0_2, 30.0_2, 30.0_2],[2,2] )))print*,"104"

print*,"PASS"

end
