real*2,parameter::r2(2,2)=1.5_2
complex(4),parameter::c4(2,2)=(1.5_4,2.5_4)
complex(8),parameter::c8(2,2)=(1.5_8,2.5_8)
complex(16),parameter::c16(2,2)=(1.5_16,2.5_16)
complex(kind=4)::c4_1(2,2)= matmul(r2,c4)
complex(kind=8)::c8_1(2,2)= matmul(r2,c8)
complex(kind=16)::c16_1(2,2)= matmul(c16,r2)

if( any(c4_1 /= RESHAPE([(4.5_4,7.5_4), (4.5_4,7.5_4), (4.5_4,7.5_4), (4.5_4,7.5_4)],[2,2] )))print*,"101"
if( any(c8_1 /= RESHAPE([(4.5_8,7.5_8), (4.5_8,7.5_8), (4.5_8,7.5_8), (4.5_8,7.5_8)],[2,2] )))print*,"102"
if( any(c16_1 /= RESHAPE([(4.5_16,7.5_16), (4.5_16,7.5_16), (4.5_16,7.5_16), (4.5_16,7.5_16)],[2,2] )))print*,"103"

print*,"PASS"

end
