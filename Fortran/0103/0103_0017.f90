integer(KIND=4),parameter::a=1
integer(KIND=4),parameter::b=1073741824
integer(KIND=4),parameter::c=2
integer(KIND=2),parameter::d=2
integer(KIND=1),parameter::e=4
integer(KIND=8),parameter::f=5
integer,parameter::constvar=kind(DSHIFTL(a,b,c))
integer,parameter::constvar1=kind(DSHIFTL(d,d,c))
integer,parameter::constvar2=kind(DSHIFTL(e,e,c))
integer,parameter::constvar3=kind(DSHIFTL(f,f,c))
if(constvar .ne. 4)print*,"100"
if(constvar1 .ne. 2)print*,"101"
if(constvar2 .ne. 1)print*,"102"
if(constvar3 .ne. 8)print*,"103"
print*,"PASS"
end
