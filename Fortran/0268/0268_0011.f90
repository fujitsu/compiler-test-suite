integer::a,b,c,d
real::ra,rb,rc,rd
integer,parameter::t1=1
data a,b,c,d,ra,rb,rc,rd /t1,2,3,4,5,6,7,t1/
if(a.ne.1)print*,"101"
if(b.ne.2)print*,"102"
if(c.ne.3)print*,"103"
if(d.ne.4)print*,"104"
if(ra.ne.5)print*,"101"
if(rb.ne.6)print*,"102"
if(rc.ne.7)print*,"103"
if(rd.ne.1)print*,"104"
print*,"PASS"
end
