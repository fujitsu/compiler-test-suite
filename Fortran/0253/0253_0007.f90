integer::arr(3),res(3)
arr=(/21,-31,41/)
open(unit=10,file='fort.10')
write(10,fmt='(G0)')(arr(i),i=1,3)
close (10)
open(unit=10,file='fort.10')
READ(10,FMT='(I3)')(res(i),i=1,3)
if (res(2)/=-31)print*,101
print*,"pass"
END
