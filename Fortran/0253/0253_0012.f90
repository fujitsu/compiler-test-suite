integer::ii,arr(4)
ii=10
arr=20
open (unit=10,file="fort.101",action="write")
write(10,FMT='(*(I0," "))')ii,ii,ii,ii
close(10)
open (unit=20,file="fort.101",action="read")
read(20,'(I2)')arr(1)
close(20)
if (arr(1)/=10)print*,101
if (arr(2)/=20)print*,102
print*,"pass"
end


