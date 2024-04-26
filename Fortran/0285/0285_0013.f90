PROGRAM main
integer::i=110,x=10,i1,x1

OPEN(1,FILE='ABC015.DAT130') 

x = x + i 

WRITE(10,fmt='(I)') i
WRITE(10,fmt='(I)') x
close(10)

OPEN(1,FILE='ABC015.DAT130') 

read(10,fmt='(I)') i1,x1
if(i1/=110 .and. x1 /= 120) print*,101

associate(aa=>10)
 BACKSPACE aa
end associate

 x=x+2
WRITE(10,fmt='(I)') x
close(10)

OPEN(1,FILE='ABC015.DAT130') 
read(10,fmt='(I)') i1,x1
if(i1/=110 .and. x1 /= 122) print*,102
close (10,status='delete')
close (1,status='delete')

print*,'pass'

END 
