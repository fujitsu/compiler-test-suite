real*2::r2
complex(kind=2),parameter::c4=(12.5_2,22.5_2)
complex(kind=2)::c44
r2=c4
if(r2 /= 12.5_2)print*,"101"
c44=c4 
if(c44 /= (12.5_2,22.5_2))print*,"102"
print*,"pass"

end
