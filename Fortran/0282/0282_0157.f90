PROGRAM MAIN

character(len =1,kind = 4), parameter :: c = 'a'

integer,parameter :: l = iachar(c,4)

character(len =1,kind = 4)::d
d = 'a'

print *,l ,"--",iachar(d,4)
if (l.NE.iachar(d,4)) then
 print *,'??? (Error: utfchar->integer) ???'
else
 print*, "utfchar->integer OK"
endif



END
