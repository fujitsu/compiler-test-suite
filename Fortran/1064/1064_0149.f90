integer,parameter::a(2,0,3)=-10
integer,parameter::a1(*,*)=iall(a,2)
integer,parameter::b1(*,*)=iany(a,2)
if(any(iall(a,2)/=a1)) then
print *,'err1'
print *,901,iall(a,2)
print *,902,a1
endif
if(any(iany(a,2)/=b1)) print *,'err2'
if(any(shape(iall(a,2))/=shape(a1))) print *,'err3'
if(any(shape(iany(a,2))/=shape(b1))) print *,'err4'
if(any(iany(a,2)/=0 )) print *,'err5'
if(any(iall(a,2)/=-1)) print *,'err6',iall(a,2)
if(any(b1/=0 )) print *,'err7'
if(any(a1/=-1)) print *,'err8',a1
print *,'pass'
end 
