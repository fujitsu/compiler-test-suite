complex(kind=2),parameter::c4=(22.5_2,20.5_2)
complex(kind=4)::c8
complex(kind=8)::c16
complex(kind=16)::c32

c8=c4
if(c8 /= (22.5,20.5))print*,"102"
c16=c4
if(c16 /= (22.5,20.5))print*,"103"
c32=c4
if(c32 /= (22.5,20.5))print*,"104"
print*,"pass"

end
