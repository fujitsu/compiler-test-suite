character(:),allocatable:: real1,real2
allocate(character(len=3+2)::real1)
allocate(character((3+2),1)::real2)
real1(:)="abcde"
real2(:)="fghij"
end
