integer::ii=5
block
volatile::ii
  block
  integer::ii=10
    block
    volatile ::ii
    if(ii==10)print*,"1:pass"
    end block
  end block
if(ii==5)print*,"2:pass"
end block
end
