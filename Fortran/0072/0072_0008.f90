subroutine ss(k)
character(k),pointer::a(:,:,:)
character(k),pointer::s
character(3),target::t(1,1,4)
character(3),target::tt
namelist /nam/a,s
a=>t(:,:,::2)
s=>tt
open(22,delim='quote')
a=reshape(['123','456'],[1,1,2])
s='789'
write(22,nam)
end
call ss(3)
call chk
print *,'pass'
end
subroutine chk
character(3) a(2),s
namelist /nam/a,s
rewind 22
read(22,nam) 
if (any(a/=['123','456'])) print *,101
if (   (s/='789')) print *,102
end
