Program test
real,parameter::x1(2,2,2,2 ,2,2,2,2 ,2,2,2,2)= 2.0
real::y(2,2,2,2, 2,2,2,2 ,2,2,2) = NORM2(x1,1)
if(y(1,1,1,1,  1,1,1,1,  1,1,1).ne.sqrt(2.0*2.0 + 2.0*2.0))print*,"101"        
print*,"pass"
end
