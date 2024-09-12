character(len = :),allocatable :: ch(:,:)
character(len = :),allocatable :: c

Allocate(character(4)::ch(4,4))

ch = 'PQRST'
if (len(ch)/=5) print *,201,len(ch)

Allocate(character(4)::c)
c = 'PQRST'
if (len(c)/=5) print *,202,len(c)
print *,'pass'
end
