real*2::d
d=123.45_2
if(real(d) /= 123.45_2) print*,"100"
if(abs(real(d,KIND =4) - 123.45)>2.)print*,"101"
if(abs(real(d,KIND =8) - 123.45)>2.)print*,"102"
if(abs(real(d,KIND =16) - 123.45)>2.)print*,"103"
if(real(d,KIND =2)/= 123.45_2)print*,"104"
print*,"PASS"
end
