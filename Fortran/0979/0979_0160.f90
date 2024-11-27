type ty1
 integer,allocatable :: i1(:)
 integer::isk
end type

type(ty1), allocatable :: uty1_a(:),uty1_b(:)

allocate(uty1_a(4))
allocate(uty1_b(4))

call move_alloc(uty1_a,uty1_b)

print *,'pass'

end
