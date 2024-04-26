integer,parameter::x(5) = [12231,4325,14543,16545,12231]
logical*1,parameter::c=.true.
logical*2,parameter::d=.true.
logical*4,parameter::e=.true.
logical*8,parameter::f=.true.
integer,parameter::l(1)= MAXLOC(x,dim=1,mask=.true.,kind=4,back=c)
integer,parameter::m(1)= MAXLOC(x,mask=.true.,kind=4,back=d)
integer,parameter::n(1)= MAXLOC(x,dim=1,mask=.true.,back=e)
integer,parameter::o(1)= MAXLOC(x,dim=1,kind=4,back=f)
integer::l1(1),m1(1),o1(1),n1(1)
l1=MAXLOC(x,dim=1,mask=.true.,kind=4,back=c)
m1= MAXLOC(x,mask=.true.,kind=4,back=d)
n1=MAXLOC(x,dim=1,mask=.true.,back=e)
o1=MAXLOC(x,dim=1,kind=4,back=f)
if(l(1) .ne. l1(1).and.l(1).ne.5)print*,"100"
if(m(1) .ne. m1(1).and.m(1).ne.5)print*,"101"
if(n(1) .ne. n1(1).and.n(1).ne.5)print*,"102"
if(o(1) .ne. o1(1).and.n(1).ne.5)print*,"103"
print*,"PASS"
end
