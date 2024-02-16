complex(kind=2),parameter::c2_1=(1.5_2,1.5_2) - (-2.5_2,3.5_2)
complex(kind=2),parameter::c2_2=-(1.5_2,1.5_2)- (2.5_2,3.5_2)
complex(kind=2),parameter::c2_3=-(1.5_2,1.5_2)- (-(2.5_2,3.5_2))
complex(kind=2),parameter::c2_4=(1.5_2,1.5_2) - (-(2.5_2,3.5_2))
complex::c4

c4=c2_1
if(c4 /= (4.0,-2.0))print*,"101"
c4=c2_2
if(c4 /= (-4.0,-5.0))print*,"102"
c4=c2_3
if(c4 /= (1.0,2.0))print*,"103"
c4=c2_4
if(c4 /= (4.0,5.0))print*,"104"
print*,"pass"
end
