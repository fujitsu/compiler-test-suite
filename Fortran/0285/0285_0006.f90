character(len=6)::openposition='append'
integer::x=0

associate(aa=>openposition)
OPEN(1,FILE='ABC008.DATA123',POSITION=aa)
end associate

WRITE(1,*)987
CLOSE(1)
OPEN(1,FILE='ABC008.DATA123')
READ(1,*) x
close (1,status='delete')
if(x==987) print*,'PASS'
END
