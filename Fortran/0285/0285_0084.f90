integer::ainquiry
integer::i=4

associate(aa=>i,bb=>ainquiry)
 OPEN(10,FILE='ABC.DATA170',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=aa)

 WRITE(10,REC=1) 2

 INQUIRE(10,NEXTREC=aa,number=bb)
end associate
close (10,status='delete')

if(i==2 .and. ainquiry==10) print*,'pass'
END
