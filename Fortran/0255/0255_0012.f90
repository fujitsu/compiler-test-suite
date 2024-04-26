program test
real,parameter::x = NORM2([3.0,4.0],dim =1) + NORM2([3.0,4.0])
if(x.ne.10.0)print*,101
print*,"pass"
end
