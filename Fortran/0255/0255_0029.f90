real,parameter::x(4:3)=10.0
real,parameter::y(3) =0.0
real,parameter::z(1) =-10.1;
real::p = norm2(x)
real::q =norm2(y)
real::r = norm2(z)
if(p.ne.0.0)print*,"101",p
if(q.ne.0.0)print*,"102",q
if(r.ne.10.1)print*,"103",r
print*,"pass"
end
