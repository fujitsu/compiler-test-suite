character(3),allocatable::a(:,:,:)
character(3),allocatable::s
namelist /nam/a,s
allocate(character(3)::a(1,1,2),s)
open(15,delim='quote')
a=reshape(['123','456'],[1,1,2])
s='789'
write(15,nam)
call chk
print *,'pass'
end
subroutine chk
character(3) a(2),s
namelist /nam/a,s
rewind 15
read(15,nam)
if (any(a/=['123','456'])) print *,101
if (   (s/='789')) print *,102
end
