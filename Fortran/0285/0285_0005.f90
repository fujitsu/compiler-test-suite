integer::i=4,x=0
character(len=11) :: openaccess

openaccess = 'direct'

associate(aa=>openaccess)
 OPEN(10,FILE='ABC007.DATA',FORM='unformatted',ACCESS=aa,RECL=i)
end associate

WRITE(10,REC=1) 23

READ(10,REC=1) x
close (10,status='delete')

if(x==23) print*,'PASS'
END
