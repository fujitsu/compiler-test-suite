integer::i=4,x=0
character(len=11) :: openform

openform = 'unformatted'

associate(aa=>openform,bb=>1)
 OPEN(10,FILE='ABC068.DATA139',FORM=aa,ACCESS='DIRECT',RECL=i)

 WRITE(10,REC=1) 25

 READ(10,REC=bb) x
end associate

close (10,status='delete')
if(x==25) print*,'PASS'

END
