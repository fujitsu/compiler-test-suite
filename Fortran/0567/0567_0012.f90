integer(kind=2)::ii
open(NEWUNIT=ii,FILE='fort.08',ACTION='write')
write(ii,*)25.25
close(ii)
open(NEWUNIT=ii,FILE='fort.08',ACTION='read')
close(ii)
print*,"pass"
end
