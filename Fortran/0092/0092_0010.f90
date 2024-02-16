integer::arr(5)
call s1(arr)
call s2(arr)
if (arr(5)/= 2016)print*,"error:101"
print*,"pass"
contains
subroutine s1(d1)
integer::d1(5)
d1=10
end subroutine
subroutine s2(dmy)
integer::dmy(5)
open(FILE='fort.12',NEWUNIT=dmy(2),FORM='FORMATTED')
write(dmy(2),*)2016
close(dmy(2))
open(NEWUNIT=dmy(4),ACTION='read',FILE='fort.12',FORM='FORMATTED')
read(dmy(4),*)dmy(5)
close(dmy(4),status="delete")
end subroutine
end
