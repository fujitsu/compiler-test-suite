character(LEN=10)::res="XYZ"
integer::ii=0
open(NEWUNIT=ii,ASYNCHRONOUS='YES',BLANK='NULL',DECIMAL='COMMA',&
     DELIM='APOSTROPHE',ENCODING='DEFAULT',&
     POSITION='ASIS',ROUND='UP',&
     SIGN='PLUS',STATUS='SCRATCH')
write(ii,*)"fortran"
rewind ii
read(ii,*)res
if (res /= "fortran")print*,"error:102"
print*,"pass"
end
