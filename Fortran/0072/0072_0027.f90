module m1
contains
subroutine ssx(s)
character(3)::s(:)
namelist /nam/s
open(1,delim='quote')
write(1,nam)
n=size(s)
if (n/=2) print *,106
end subroutine
end
use m1
parameter(k=3)
character(k)::s(3)
s(::2)=['pqr',['stu'] ]
call ssx(s(::2))
call chk
print *,'pass'
end
subroutine chk
character(3) s(2)
namelist /nam/s
rewind 1
read(1,nam) 
if (any(s/= &
['pqr','stu']) &
) print *,102
end
