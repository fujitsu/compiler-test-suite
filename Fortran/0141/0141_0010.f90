character(:),allocatable::a(:)
character(:),allocatable::s
allocate(character(3)::a(2),s)
open(1,delim='quote')
a=['123','456']
s='789'
call sub(a,s)
print *,'pass'
contains
subroutine sub(a,s)
character(:),allocatable::a(:)
character(:),allocatable::s
namelist /nam/a,s
write(1,nam)
end subroutine
end
