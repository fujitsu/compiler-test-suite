character(len=6)::closestatus='delete'
integer::x=0

OPEN(1,FILE='ABC012.DATA',STATUS='new')

WRITE(1,*)987
CLOSE(1)

OPEN(1,FILE='ABC012.DATA',status='old')
READ(1,*) x

associate(aa=>closestatus)
 CLOSE(1,status=aa)
end associate

if(x==987) print*,'PASS'
END
