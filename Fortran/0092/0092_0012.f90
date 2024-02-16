type ty
character(LEN=7)::ch
integer::ii
end type
type(ty)::obj
open(NEWUNIT=obj%ii,ACTION='write',&
     ASYNCHRONOUS='YES',BLANK='NULL',DECIMAL='COMMA',&
     DELIM='APOSTROPHE',ENCODING='DEFAULT',&
     FORM='FORMATTED',FILE='fort.15')
write(obj%ii,*)"fortran"
close(obj%ii)
open(NEWUNIT=obj%ii,ACTION='read',&
     ASYNCHRONOUS='YES',BLANK='NULL',DECIMAL='COMMA',&
     DELIM='APOSTROPHE',ENCODING='DEFAULT',&
     FORM='FORMATTED',FILE='fort.15')
read(obj%ii,*)obj%ch
close(obj%ii,status='delete')
if (obj%ch /="fortran")print*,"error:01"
print*,"pass"
end
