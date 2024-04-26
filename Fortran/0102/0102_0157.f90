integer,parameter::x(5) = [1,9,45,45,5]
integer,parameter::l(1) =MINLOC(x,dim=1,mask=[.false.,.true.,.true.,.true.,.true.],kind=1,back=.true..and..true.)
integer,parameter::l1(1)=MINLOC(x,dim=1,mask=[.false.,.true.,.true.,.true.,.true.],kind=1,back=.true..and..false.)
integer,parameter::l2(1)=MINLOC(x,dim=1,mask=[.false.,.true.,.true.,.true.,.true.],kind=1,back=.true..or..true.)
integer,parameter::l3(1)=MINLOC(x,dim=1,mask=[.false.,.true.,.true.,.true.,.true.],kind=1,back=.true..or..false.)
if(l(1).ne.5)print*,"100"
if(l1(1).ne.5)print*,"101"
if(l2(1).ne.5)print*,"102"
if(l3(1).ne.5)print*,"103"
print*,"PASS"
end
