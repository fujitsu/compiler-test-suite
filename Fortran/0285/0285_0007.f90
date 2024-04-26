character(len=6)::openaction='write'
integer::x=0

associate(aa=>openaction)
OPEN(1,FILE='ABC008.DATA124',action=aa)
end associate

WRITE(1,*)987
CLOSE(1)
OPEN(1,FILE='ABC008.DATA124')
READ(1,*) x
if(x==987) print*,'PASS'
close (1,status='delete')
END
