integer::i=4,x=0,rc=1
character(len=11) :: openform

openform = 'unformatted'

associate(aa=>openform,bb=>rc)
 OPEN(10,FILE='ABC069.DATA140',FORM=aa,ACCESS='DIRECT',RECL=i)

 WRITE(10,REC=bb) 25

 READ(10,REC=1) x
end associate
close (10,status='delete')

if(x==25) print*,'PASS'

END
