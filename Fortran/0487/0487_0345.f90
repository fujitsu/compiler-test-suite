real,parameter::a=atan( 0.1_4 , 0.1_4)
real(8),parameter::b=atan( 0.1_4 , 0.1_4)
real(16),parameter::c=atan( 0.1_4 , 0.1_4)
write(1,*) atan( 0.1_4 , 0.1_4)
write(1,*) atan( 0.1_8 ,0.1_8 )
write(1,*) atan( 0.1_16, 0.1_16)
write(1,*) a,b,c
print *,'pass'
end
