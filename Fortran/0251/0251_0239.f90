block
integer::ii=1,jj=2,kk=3
associate(a=>ii+jj+kk)
block
if(a==6)then
ii=a+1
else
jj=a+1
end if
end block
end associate
if(ii==7)print*,"1:pass"
associate(b=>ii+jj+kk)
block
if(b/=12)then
jj=b+1
else
kk=b+1
end if
end block
end associate
if(kk==13)print*,"2:pass"
associate(c=>ii+jj+kk)
block
if(c==22)then
kk=c+1
else
ii=c+1
end if
end block
end associate
if(kk==23)print*,"3:pass"
end block
end

