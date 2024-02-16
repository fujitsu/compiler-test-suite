integer(KIND=4)::ii
integer::res=0
open(NEWUNIT=ii,STATUS='SCRATCH')
write(ii,*)2016
rewind ii 
read(ii,*)res
if (res/=2016)print*,"error:101"
print*,"pass"
end
