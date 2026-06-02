integer,parameter::a(2,0,3)=-10
integer,parameter::a1=iall(a)
integer,parameter::b1=iany(a)
if(   (iall(a)/=a1)) then
print *,'err1'
print *,901,iall(a,2)
print *,902,a1
endif
if((iany(a)/=b1)) print *,'err2'
if(((iall(a))/=(a1))) print *,'err3'
if(((iany(a))/=(b1))) print *,'err4'
if((iany(a)/=0 )) print *,'err5'
if((iall(a)/=-1)) print *,'err6',iall(a)
if((b1/=0 )) print *,'err7'
if((a1/=-1)) print *,'err8',a1
print *,'pass'
end 
