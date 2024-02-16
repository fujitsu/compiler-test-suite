integer::ii,aa
open(NEWUNIT=ii,ACTION='write',FILE='fort.01')
write(ii,*)101
close(ii)
open(NEWUNIT=ii,ACTION='read',FILE='fort.01')
read(ii,*)aa
close(ii,status="delete")
if (aa/=101)print*,"error:101"
print*,"pass"
end
