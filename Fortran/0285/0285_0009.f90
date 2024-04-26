character(len=6)::openstatus='new'
integer::x=0

associate(aa=>openstatus)
OPEN(1,FILE='ABC011.DATA127',STATUS=aa)
end associate

WRITE(1,*)987
CLOSE(1)

OPEN(1,FILE='ABC011.DATA127',status='old')
READ(1,*) x

CLOSE(1,status='delete')

if(x==987) print*,'PASS'
END
