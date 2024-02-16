complex(kind=2),parameter::c2_1=-(1.55_2,1.5_2)
complex(kind=2),parameter::c2_2=(-1.5_2,1.5_2)
complex(kind=2),parameter::c2_3=(-1.5_2,-1.5_2)
complex(kind=2),parameter::c2_4=+(1.5_2,1.5_2)
complex(kind=2),parameter::c2_5=(1.5_2,-1.57_2)
complex(kind=4)::c4
c4=c2_1
if(c4 /= -(1.55_2,1.5_2))print*,"101"
c4=c2_2
if(c4 /= (-1.5_2,1.5_2))print*,"102"
c4=c2_3
if(c4 /= (-1.5_2,-1.5_2))print*,"103"
c4=c2_4
if(c4 /= (1.5_2,1.5_2))print*,"104"
c4=c2_5
if(c4 /= (1.5_2,-1.57_2))print*,"105"
print*,"pass"
end
