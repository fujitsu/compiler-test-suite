integer::ii
open(action='write',unit=20,file='fort.01')
write(20,'(G0)')12345
close(20)
open(unit=20,file='fort.01',action='read')
read (20,10)ii
10 format(I5)
close(20,status= "delete")
if (ii/=12345)print*,101
print*,"pass"
end
