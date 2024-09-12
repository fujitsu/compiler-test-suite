integer(kind=2)::ii(3)
open(NEWUNIT=ii(2),FILE='fort.08',ACTION='write')
write(ii(2),*)25.25
close(ii(2))
open(NEWUNIT=ii(2),FILE='fort.08',ACTION='read')
close(ii(2))
print*,"pass"
end
