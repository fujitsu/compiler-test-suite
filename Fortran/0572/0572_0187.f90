integer,parameter::x(4,5) =10
integer,parameter::y = rank(x(4,:))
integer,parameter::z = rank(x(:,:))
integer,parameter::p = rank(x(1,1))        
integer,parameter::q = rank(x(1:4:2,1:5:2))        
if(y.ne.1)print*,"101"
if(z.ne.2)print*,"102"
if(p.ne.0)print*,"103"
if(q.ne.2)print*,"103"
print*,"pass"
end
