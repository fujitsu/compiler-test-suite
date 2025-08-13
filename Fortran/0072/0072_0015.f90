module m1
contains
subroutine ss(k,a,s)
character(3)::a(k:,k+1:,k+2:)
character(3),pointer::s
namelist /nam/a,s
open(29,delim='quote')
write(29,nam)
end subroutine
end
use m1
parameter(k=3)
character(k),pointer::a(:,:,:)
character(k),pointer::s
character(3),target::t(1,1,4)
character(3),target::tt
a=>t(:,:,::2)
s=>tt
a=reshape(['123','456'],[1,1,2])
s='789'
call ss(3,a,s)
call chk
print *,'pass'
end
subroutine chk
character(3) a(2),s
namelist /nam/a,s
rewind 29
read(29,nam) 
if (any(a/=['123','456'])) print *,101
if (   (s/='789')) print *,102
end
