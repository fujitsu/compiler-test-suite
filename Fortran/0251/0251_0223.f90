block
integer::ii=2
call sub(ii)
if(ii==3)print*,"1:pass"
block
integer::jj
jj=ii
call sub(jj)
if(jj==4)print*,"2:pass"
end block
end block
contains
subroutine sub(d1)
integer::d1
block
integer::ii
ii=d1+1
d1=ii
end block
end subroutine
end
