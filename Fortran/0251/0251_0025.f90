call ss

contains
subroutine ss
real,allocatable,save :: i,j
allocate(i,j)
i=2.43
j=5.34

if(int(i)==2) then
 block
 real(kind(i)),allocatable :: tmp
 allocate(tmp)
 tmp=i
 i=j
 j=tmp
 end block
end if

if(int(j) == 2) print*,'pass'
end subroutine
end
