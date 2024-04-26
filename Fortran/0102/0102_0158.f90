integer,parameter::x(5) = [1,9,45,45,5]
integer,parameter::l(1)  =MINLOC(x,back=.true.,mask=[.false.,.true.,.false.,.true.,.true.],kind=1)
integer,parameter::l1(1) =MINLOC(x,mask=[.false.,.true.,.false.,.true.,.true.],back=.true.,kind=1)
integer,parameter::l2(1) =MINLOC(x,dim=1,mask=[.false.,.true.,.false.,.true.,.true.])
integer,parameter::l3(1) =MINLOC(x,back=.true.)
integer,parameter::l4(1) =MINLOC(x)
if(l(1).ne.5)print*,"100"
if(l1(1).ne.5)print*,"101"
if(l2(1).ne.5)print*,"102"
if(l3(1).ne.1)print*,"103"
if(l4(1).ne.1)print*,"104"
print*,"PASS"
end
