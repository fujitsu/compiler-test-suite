integer,parameter::x(5) = [1,9,45,45,5]
logical*1,parameter::c=.true.
logical*2,parameter::d=.true.
logical*4,parameter::e=.true.
logical*8,parameter::f=.true.
integer,parameter::l(1)= MINLOC(x,dim=1,mask=.true.,kind=4,back=c)
integer,parameter::m(1)= MINLOC(x,mask=.true.,kind=4,back=d)
integer,parameter::n(1)= MINLOC(x,dim=1,mask=.true.,back=e)
integer,parameter::o(1)= MINLOC(x,dim=1,kind=4,back=f)
if(l(1) .ne. (1))print*,"100"
if(m(1) .ne. (1))print*,"101"
if(n(1) .ne. (1))print*,"102"
if(o(1) .ne. (1))print*,"103"
print*,"PASS"
end

