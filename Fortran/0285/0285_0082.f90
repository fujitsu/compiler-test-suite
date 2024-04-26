character(len=12)::ainquiry
integer::i=4

associate(aa=>i,bb=>ainquiry)
 OPEN(10,FILE='ABC.DATA164',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=aa)

 WRITE(10,REC=1) 2

 INQUIRE(10,NEXTREC=aa,name=bb)
end associate
close (10,status='delete')

if(i==2 .and. ainquiry=='ABC.DATA164') print*,'pass'
END
