subroutine ss(k)
character(3),pointer::a(:,:,:)
character(k),pointer::s(:)
character(3),target::t(1,1,4)
character(3),target::tt(1)
namelist /nam/a,s
a=>t(:,:,::2)
s=>tt
open(39,delim='quote')
a=reshape(['123','456'],[1,1,2])
s='789'
write(39,nam)
end
call ss(3)
call chk
print *,'pass'
end
subroutine chk
character(3) a(2),s
namelist /nam/a,s
rewind 39
read(39,nam) 
if (any(a/=['123','456'])) print *,101
if (   (s/='789')) print *,102
end
