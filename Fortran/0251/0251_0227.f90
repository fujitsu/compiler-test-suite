integer::jj
integer::ii=kind(jj)
block
integer::ii=1
jj=fun(ii)
end block
if(ii==4)print*,"3:pass"
contains
integer function fun(d1)
integer::d1
fun=d1
block
integer::arr(d1)
integer::fun
if(size(arr)==1)then
fun=d1+1
else
fun=d1+2
end if
  block
  if(fun==2)print*,"1:pass"
  end block
end block
if(fun==1)print*,"2:pass"
end function
end  
