integer*4,parameter::x(5) =[135423424,311321,313423,311321,777873]

integer,parameter::k(1) =MINLOC(x,1,[.false.,.true.,.false.,.true.,.true.],1,.true.)
integer,parameter::k1(1) =MINLOC(x,[.false.,.true.,.false.,.true.,.true.],1,.true.)
integer,parameter::k2(1)=MINLOC(x,.true.)
integer,parameter::k3(1)=MINLOC(x,1,.true.)
integer,parameter::k4(1)=MINLOC(x,1,[.false.,.true.,.false.,.true.,.true.],1)
integer,parameter::k5(1)=MINLOC(x,1,[.false.,.true.,.false.,.true.,.true.])
integer,parameter::k6(1)=MINLOC(x,[.false.,.true.,.false.,.true.,.true.])

integer,parameter::l(1)  =MINLOC(x,dim=1,mask=[.false.,.true.,.false.,.true.,.true.],kind=1,back=.true.)
integer,parameter::l1(1) =MINLOC(x,mask=[.false.,.true.,.false.,.true.,.true.],kind=1,back=.true.)
integer,parameter::l2(1) =MINLOC(x,dim=1,mask=[.false.,.true.,.false.,.true.,.true.],back=.true.)
integer,parameter::l3(1) =MINLOC(x,back=.true.)
integer,parameter::l4(1) =MINLOC(x)
integer,parameter::l5(1) =MINLOC(x,dim=1,back=.true.)
integer,parameter::l6(1) =MINLOC(x,dim=1,mask=[.false.,.true.,.false.,.true.,.true.],back=.true.)
integer,parameter::l7(1) =MINLOC(x,mask=[.false.,.true.,.false.,.true.,.true.],back=.true.)
integer,parameter::l8(1) =MINLOC(x,kind=1,back=.true.)
integer,parameter::l9(1) =MINLOC(x,dim=1,kind=1,back=.true.)

integer,parameter::m(1)  =MINLOC(x,dim=1,mask=[.false.,.true.,.false.,.true.,.true.],kind=1)
integer,parameter::m1(1) =MINLOC(x,mask=[.false.,.true.,.false.,.true.,.true.],kind=1)
integer,parameter::m2(1) =MINLOC(x,dim=1,mask=[.false.,.true.,.false.,.true.,.true.])
integer,parameter::m3(1) =MINLOC(x,dim=1)
integer,parameter::m4(1) =MINLOC(x,mask=[.false.,.true.,.false.,.true.,.true.])
integer,parameter::m5(1) =MINLOC(x,kind=1)
integer,parameter::m6(1) =MINLOC(x,dim=1,kind=1)

if(k(1).ne.4)print*,"100"
if(k1(1).ne.4)print*,"101"
if(k2(1).ne.2)print*,"102"
if(k3(1).ne.2)print*,"103"
if(k4(1).ne.2)print*,"104"
if(k5(1).ne.2)print*,"105"
if(k6(1).ne.2)print*,"106"

if(l(1).ne.4)print*,"107"
if(l1(1).ne.4)print*,"105"
if(l2(1).ne.4)print*,"106"
if(l3(1).ne.4)print*,"107"
if(l4(1).ne.2)print*,"108"
if(l5(1).ne.4)print*,"109"
if(l6(1).ne.4)print*,"110"
if(l7(1).ne.4)print*,"111"
if(l8(1).ne.4)print*,"112"
if(l9(1).ne.4)print*,"113"

if(m(1).ne.2)print*,"114"
if(m1(1).ne.2)print*,"115"
if(m2(1).ne.2)print*,"116"
if(m3(1).ne.2)print*,"117"
if(m4(1).ne.2)print*,"118"
if(m5(1).ne.2)print*,"119"
if(m6(1).ne.2)print*,"120"
print*,"PASS"

end
