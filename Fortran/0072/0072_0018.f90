module m1
contains
subroutine ss(k,a,s)
complex(4)::a(k+2:,k+1:,k:)
complex(4)::s
namelist /nam/a,s
open(1,delim='quote')
write(1,nam)
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
a=reshape([(1,2),(4,6)],[1,1,2])
s=(7,8)
call ss(3,a,s)
call chk
print *,'pass'
end
subroutine chk
complex(4) a(2),s
namelist /nam/a,s
rewind 1
read(1,nam) 
if (any(a/=[(1,2),(4,6)])) print *,101
if (   (s/=(7,8))) print *,102
end
