Program test
real,parameter::r1(2,2) = reshape([3.0,4.0,3.0,4.0],[2,2])
integer,parameter::x = 1
real::x2= NORM2(r1)
real::r2  =NORM2( NORM2(x=r1,dim=x))
if(r2.ne.sqrt(5.0*5.0 + 5.0*5.0))print*,101
if(x2.ne.sqrt(3.0*3.0 + 4.0*4.0 +3.0*3.0 +4.0*4.0))print*,102
print*,"pass"
end
