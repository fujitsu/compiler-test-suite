integer,parameter::a(2,0,3)=-10
integer,parameter::a1=iall(a)
integer,parameter::b1=iany(a)
if((iall(a)/=a1)) then
print *,'err1'
print *,901,iall(a,2)
print *,902,a1
endif
if((iany(a)/=b1)) print *,'err2'
print *,'pass'
end 
