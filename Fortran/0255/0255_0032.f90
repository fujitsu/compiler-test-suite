program test
real,parameter::r(2:5) = 3.0
real::y = NORM2(r)
if(y.ne.6.0)print*,101
print*,"pass"
end
