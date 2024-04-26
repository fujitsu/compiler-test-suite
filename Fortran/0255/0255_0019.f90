program test
real,parameter::x(1,1) = 3.0
real,parameter::y(1,3) = 4.0
real,parameter::z(3,1) = 5.0
real::a(1) = NORM2(x,1)
real::b(3)= NORM2(y,1)
real::c(1) = NORM2(z,1)
real::p(1) =norm2(x,2)
real::q(1) =norm2(y,2)
real::r(3) =norm2(z,2)
if(a(1).ne.3.0)print*,"101",a(1),x(1,1)
if(b(1).ne.4.0)print*,"102"
if(b(2).ne.4.0)print*,"103"
if(b(3).ne.4.0)print*,"104"
if(c(1)<=8.6602.and.c(1)>=8.6603)print*,"105"
if(p(1).ne.3.0)print*,"106",p(1)
if(q(1)<=6.9282.and.q(1)>=6.9283)print*,"107"
if(r(1).ne.5.0)print*,"108"
if(r(2).ne.5.0)print*,"109"
if(r(3).ne.5.0)print*,"110"
print*,"pass"
end
