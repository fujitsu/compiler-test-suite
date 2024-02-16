integer*4,parameter::x(5) =[1231131,121,1313,13131,131113]
integer,parameter::l(1)  =MAXLOC(x,back=.true.,mask=[.false.,.true.,.false.,.true.,.true.],kind=1)
integer,parameter::l1(1) =MAXLOC(x,mask=[.false.,.true.,.false.,.true.,.true.],back=.true.,kind=1)
integer,parameter::l2(1) =MAXLOC(x,dim=1,mask=[.false.,.true.,.false.,.true.,.true.])
integer,parameter::l3(1) =MAXLOC(x,back=.true.)
integer,parameter::l4(1) =MAXLOC(x)
integer::n(1),n1(1),n2(1),n3(1),n4(1)
n =MAXLOC(x,back=.true.,mask=[.false.,.true.,.false.,.true.,.true.],kind=1)
n1=MAXLOC(x,mask=[.false.,.true.,.false.,.true.,.true.],back=.true.,kind=1)
n2=MAXLOC(x,dim=1,mask=[.false.,.true.,.false.,.true.,.true.])
n3=MAXLOC(x,back=.true.)
n4=MAXLOC(x)
if(l(1).ne.n(1) .and. l(1).ne.5)print*,"100"
if(l1(1).ne.n1(1) .and. l(1).ne.5)print*,"101"
if(l2(1).ne.n2(1).and. l2(1) .ne.5)print*,"102"
if(l3(1).ne.n3(1).and. l3(1) .ne.1)print*,"103"
if(l4(1).ne.n4(1).and. l4(1) .ne.1)print*,"104"
print*,"PASS"
end

