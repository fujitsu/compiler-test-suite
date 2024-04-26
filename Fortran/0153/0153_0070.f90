parameter(k=3)
character(k)::a(1,1,4)
open(1,delim='quote')
a(:,:,::2)=reshape(['123','456'],[1,1,2])
call ss(3,a(:,:,::2))
call chk
print *,'pass'
contains
subroutine ss(k,a)
character(k)::a(:,:,:)
namelist /nam/a
write(1,nam)
end subroutine
end
subroutine chk
character(3)::a(2)
namelist /nam/a
rewind 1
read(1,nam)
if (any(a/=reshape(['123','456'],[2]))) print *,101
end
