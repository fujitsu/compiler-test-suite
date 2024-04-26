integer::ainquiry

associate(bb=>ainquiry)
 OPEN(10,FILE='ABC.DATA173',FORM='UNFORMATTED',ACCESS='STREAM')

 WRITE(10) 2

 INQUIRE(10,pos=bb)
end associate
close (10,status='delete')

if(ainquiry==5) print*,'pass'
END
