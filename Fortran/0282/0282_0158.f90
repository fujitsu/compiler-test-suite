PROGRAM MAIN

character(len =4), parameter :: c = 'a'

integer,parameter :: b = ichar(c,4)

character(len =4)::d

d = 'a'

print *,b ,"--",ichar(d,4)
if (b.NE.ichar(d,4)) then
 print *,'??? (Error: utfchar->integer) ???'
else
 print*, "utfchar->integer OK"
endif



END
