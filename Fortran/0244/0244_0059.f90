type tt
 integer :: trg(10,10,10,10)
end type

type tt2
 type(tt),pointer :: cmp1(:,:)
end type

type(tt),target :: tgt(6,7)

type(tt2) :: obj

logical,allocatable :: alc

tgt = tt(4)

obj%cmp1 => tgt(:,:)

allocate(alc,source=is_contiguous(obj%cmp1%trg(2,2,2,2)))
alc=.false.
if(is_contiguous(obj%cmp1%trg(2,2,2,2)) .neqv. .false.) print*,101,'obj%cmp1%trg',alc
print*,'pass'
end
