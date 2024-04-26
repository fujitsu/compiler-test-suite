integer::i=4,iost,iost2

associate(aa=>i,bb=>iost,cc=>iost2)
 OPEN(10,FILE='ABC.DATA164',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=aa,iostat=cc)

 WRITE(10,REC=1) 2

 INQUIRE(10,NEXTREC=aa,iostat=bb)
end associate
close (10,status='delete')

if(i==2 .and. iost==0 .and. iost2 == 0) print*,'pass'
END
