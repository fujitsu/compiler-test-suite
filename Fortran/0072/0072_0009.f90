subroutine ss()
character(:),pointer::a(:,:,:)
character(:),pointer::s
character(3),target::t(1,1,4)
character(3),target::tt
namelist /nam/a,s
a=>t(:,:,::2)
s=>tt
open(1,delim='quote')
a=reshape(['123','456'],[1,1,2])
s='789'
write(1,nam)
end
call ss()
call chk
print *,'pass'
end
subroutine chk
character(3) a(2),s
namelist /nam/a,s
rewind 1
read(1,nam) 
if (any(a/=['123','456'])) print *,101
if (   (s/='789')) print *,102
end
