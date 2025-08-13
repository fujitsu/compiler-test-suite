Implicit none
Type ArrayHolder
    Real, allocatable, dimension (:):: Content
End type ArrayHolder
Integer, parameter:: NTry = 100, NContent = 10000000
Type (ArrayHolder), pointer:: Item
Integer:: ITry,II
Do ITry = 1, NTry
    write(28,*) ITry
    Allocate (Item)
    Allocate (Item % Content (NContent))
    Deallocate (Item)
End do
rewind 28
do ITry = 1, NTry
  read(28,*) II;if (II/=ITry)print *,'error'
end do
print *,'pass'
end
