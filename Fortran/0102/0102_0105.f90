integer,parameter::x(5) =[1,2,3,4,2]
integer,parameter::k(1) =MINLOC(array = x,dim =1,mask =[.false.,.true.,.false.,.true.,.true.])
integer,parameter::k2(1) =MAXLOC(array = x,dim =1,mask =[.false.,.true.,.false.,.true.,.true.])
integer,parameter::k3(1) =MINLOC(x,  [.false.,.true.,.false.,.true.,.true.])
integer,parameter::k4(1) =MAXLOC(x, [.false.,.true.,.false.,.true.,.true.])
if(any(k.ne.MINLOC(array = x,dim =1,mask=[.false.,.true.,.false.,.true.,.true.])))print*,"101"
if(any(k2.ne.MAXLOC(array = x,dim =1,mask=[.false.,.true.,.false.,.true.,.true.])))print*,"102"
if(any(k3.ne.MINLOC( x,[.false.,.true.,.false.,.true.,.true.])))print*,"103"
if(any(k4.ne.MAXLOC( x,[.false.,.true.,.false.,.true.,.true.])))print*,"104"
print*,"PASS"
end
