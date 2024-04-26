integer::ii,res1
character(LEN=7)::ch,res2
real::rr,res3
ii=10
ch = "fortran"
rr=25.50
open(unit=10,file='fort.09')
write(10,20)ii,ch,rr
20 format(3G0)
close (10)
open(unit=10,file='fort.09')
read(10,'(I2,A7,F5.2)')res1,res2,res3
close (10,status="delete")
if (res1/=10 .or. res2/="fortran" .or. res3/=25.50)print*,101
print*,"pass"
end
