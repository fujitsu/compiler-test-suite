integer,parameter :: j = 10
character(j),allocatable :: cha1,cha2,cha3,cha4
allocate(character(len=j,kind=1)::cha1)
allocate(character(j,1)::cha2)
allocate(character(kind=1,len=j)::cha3)
allocate(character(j,kind=1)::cha4)
cha1 = "1234567890"
cha2 = "1234567890"
cha3 = "1234567890"
cha4 = "1234567890"
if ( len(cha1) .ne. j ) call errtra
if ( len(cha2) .ne. j ) call errtra
if ( len(cha3) .ne. j ) call errtra
if ( len(cha4) .ne. j ) call errtra
print *,'pass '
end
