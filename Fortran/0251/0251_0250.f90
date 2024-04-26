integer::ii=1
if(fun(ii)==1)print*,1
ii=0
block
integer::ii=10
if(fun(ii)==1)print*,1
ii=2
end block
if(fun(ii)==1)print*,1
contains
integer function fun(d1)
integer::d1
block
save::kk
integer::kk
block
if(d1==1)then
kk=100
else
kk=kk+1
end if
print*,"value =",kk
end block
fun=1
end block
end function
end

