integer::ii=1
block
volatile::ii
if(ii==1)print*,"1:pass"
end block
ii=2
block
integer::ii=3
block
volatile::ii
if(ii==3)print*,"2:pass"
end block
end block
end
