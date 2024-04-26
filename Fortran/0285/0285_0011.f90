integer::i=4

associate(aa=>i,bb=>10)
 OPEN(10,FILE='ABC.DATA129',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=aa)

WRITE(bb,REC=1) 2

INQUIRE(10,NEXTREC=aa)
end associate

if(i==2) print*,'pass'
close (10,status='delete')
END
