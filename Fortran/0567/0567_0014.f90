integer(kind=2)::ii(3)
integer :: n =2
open(NEWUNIT=ii(n),FILE='fort.04',ACTION='write')
write(ii(2),*)25.25
close(ii(n))
open(NEWUNIT=ii(n),FILE='fort.04',ACTION='read')
close(ii(n))
print*,"pass"
end
