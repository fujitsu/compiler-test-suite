integer::arr1(4)
logical::arr2(5)
character::arr3(6)
call sub(arr1,arr2,arr3)
contains
subroutine sub(d1,d2,d3)
integer::d1(4),res(3)
logical::d2(5)
character::d3(6)
integer::i
open(100,file="fort.09",action="write")
write(100,10)SIZE(d1),SIZE(d2),SIZE(d3)
10 FORMAT (*(G0))
close(100)        
open(200,file="fort.09",action="read")
read(200,'(3(I1))')(res(i),i=1,3)
close(200)
if (res(1)/=4)print*,101
if (res(2)/=5)print*,102
if (res(3)/=6)print*,103
print*,"pass"
end subroutine
end
