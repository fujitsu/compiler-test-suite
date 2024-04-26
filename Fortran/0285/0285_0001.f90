integer::i=4

associate(aa=>i)
 OPEN(10,FILE='ABC.DATA',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=aa)
end associate

WRITE(10,REC=1) 2

INQUIRE(10,NEXTREC=i)

close (10,status='delete')
if(i==2) print*,'pass'
END
