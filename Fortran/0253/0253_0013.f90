integer::aa,bb
character(20)::ch,bh
aa=100
ch = "black"
open(unit=10,file="fort.02",action="write")
write(10,5)aa,ch
5 format(*(G0))
close(10)
open(unit=20,file="fort.02",action="read")
read(20,'(I3,A5)')bb,bh
close(20)
if (bb/=100)print*,101,bb
if (bh/="black")print*,102,bh
print*,"pass"
end
