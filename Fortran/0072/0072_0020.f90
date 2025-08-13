module m1
contains
subroutine ss(k,a,s)
complex(4)::a(:,:,:)
complex(4),pointer::s
namelist /nam/a,s
open(34,delim='quote')
write(34,nam)
end subroutine
end
use m1
parameter(k=4)
complex(k),pointer::a(:,:,:)
complex(k),pointer::s
complex(4),target::t(1,1,4)
complex(4),target::tt
a=>t(:,:,::2)
s=>tt
a=reshape([(1,3),(4,5)],[1,1,2])
s=(7,9)
call ss(3,a,s)
call chk
print *,'pass'
end
subroutine chk
complex(4) a(2),s
namelist /nam/a,s
rewind 34
read(34,nam) 
if (any(a/=[(1,3),(4,5)])) print *,101
if (   (s/=(7,9))) print *,102
end
