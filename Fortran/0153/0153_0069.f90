subroutine ss(k)
character(k),pointer::a(:,:,:)
character(k),pointer::s
character(3),target::t(1,1,4)
namelist /nam/a
a=>t(:,:,::2)
a=reshape(['123','456'],[1,1,2])
write(2,*)a
write(1,nam)
end
open(1,delim='quote')
call ss(3)
call chk
print *,'pass'
end
subroutine chk
character(3)::a(2)
namelist /nam/a
rewind 1
read(1,nam)
if (any(a/=reshape(['123','456'],[2]))) print *,101
end
