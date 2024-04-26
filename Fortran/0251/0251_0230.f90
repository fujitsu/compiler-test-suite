integer::ii=1
block
integer::ii=2
  block
  ii=fun(ii)
  if(ii==4)print*,"1:pass"
  end block
end block
if(ii==1)print*,"2:pass"
ii=fun(5)
block
integer::jj=10
if(jj==ii)then
ii=ii+2
else
print*,"error"
end if
end block
if(ii==12)print*,"3:pass"
contains
integer function fun(d1)
integer::d1
fun=d1+d1
end function
end
