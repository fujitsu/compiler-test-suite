logical::ainquiry
integer::i=4

associate(aa=>i,bb=>ainquiry)
 OPEN(10,FILE='ABC.DATA171',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=aa)

 WRITE(10,REC=1) 2

 CLOSE(10)

 INQUIRE(10,NEXTREC=aa,opened=bb)
 OPEN(10,FILE='ABC.DATA171',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=4)
end associate
close (10,status='delete')

if(i==2 .and. ainquiry .eqv. .false.) print*,'pass'
END
