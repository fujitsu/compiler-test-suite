character(len=12)::ainquiry=' ',iom=' '
integer::i=4

associate(aa=>i,bb=>ainquiry,cc=>iom)
 OPEN(10,FILE='ABC.DATA163',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=aa,iomsg=cc)

 WRITE(10,REC=1) 2

 INQUIRE(10,NEXTREC=aa,iomsg=bb)
end associate
close (10,status='delete')

if(i==2) print*,'pass',iom,ainquiry
END
