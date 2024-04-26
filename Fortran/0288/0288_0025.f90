call test()
print *,'pass'
end
subroutine test()
logical :: l,m
integer, pointer :: i
integer, allocatable, dimension (:,:) :: j
i => null( )
l = associated (i)
m = allocated (j)
allocate (j(4,-2:3))
allocate (i)
l = associated (i)
if (l.neqv..true.   )print *,'err'
m = allocated (j)
if (m.neqv..true.   )print *,'err'
deallocate (i,j)
end
