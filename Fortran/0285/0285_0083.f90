logical::ainquiry
integer::i=4

associate(aa=>i,bb=>ainquiry)
 OPEN(10,FILE='ABC.DATA166',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=aa)

 WRITE(10,REC=1) 2

 INQUIRE(10,NEXTREC=aa,named=bb)
end associate
close (10,status='delete')

if(i==2 .and. ainquiry .eqv. .true.) print*,'pass'
END
