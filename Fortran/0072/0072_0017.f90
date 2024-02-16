module m1
contains
subroutine ss(k,a,s)
complex(8)::a(k:,k+1:,k+2:)
complex(8),pointer::s
namelist /nam/a,s
open(1,delim='quote')
write(1,nam)
end subroutine
end
use m1
parameter(k=8)
complex(k),pointer::a(:,:,:)
complex(k),pointer::s
complex(8),target::t(1,1,4)
complex(8),target::tt
a=>t(:,:,:2)
s=>tt
a=reshape([(1,2),(4,5)],[1,1,2])
s=(7,9)
call ss(3,a,s)
call chk
print *,'pass'
end
subroutine chk
complex(8) a(2),s
namelist /nam/a,s
rewind 1
read(1,nam) 
if (any(a/=[(1,2),(4,5)])) print *,101
if (   (s/=(7,9))) print *,102
end
