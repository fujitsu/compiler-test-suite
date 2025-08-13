character(:),allocatable::a(:,:,:)
character(:),allocatable::s
namelist /nam/a,s
allocate(character(3)::a(1,1,2),s)
open(14,delim='quote')
a=reshape(['123','456'],[1,1,2])
s='789'
write(14,nam)
call chk
print *,'pass'
end
subroutine chk
character(3) a(2),s
namelist /nam/a,s
rewind 14
read(14,nam)
if (any(a/=['123','456'])) print *,101
if (   (s/='789')) print *,102
end
