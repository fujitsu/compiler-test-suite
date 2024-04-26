integer::i=4,x=0
character(len=11) :: openform

openform = 'unformatted'

associate(aa=>openform)
 OPEN(10,FILE='ABC006.DATA',FORM=aa,ACCESS='DIRECT',RECL=i)
end associate

WRITE(10,REC=1) 25

READ(10,REC=1) x

close (10,status='delete')
if(x==25) print*,'PASS'

END
