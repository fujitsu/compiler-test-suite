program test
real,parameter::r(2:3,5:6) = 4.0
real::y(2) = NORM2(r,1)
if(y(1).ne.sqrt(4.0*4.0 + 4.0*4.0))print*,101
if(y(2).ne.sqrt(4.0*4.0 + 4.0*4.0))print*,102
print*,"pass"
end
