integer::ii=1
if(fun(ii)==1) print*,1
ii=0
if(fun(ii)==1) print*,1
ii=2
if(fun(ii)==1) print*,1
contains
integer function fun(d1)
integer::d1
block
integer,save::kk
if(d1==1)then
kk=100
else
kk=kk+1
end if
print*,"value =",kk
fun=1
end block
end function
end

