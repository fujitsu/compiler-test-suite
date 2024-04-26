call test()
print *,'pass'
end
subroutine test()
integer, allocatable :: i(:,:)
logical l
allocate (i(2,3))
l = allocated (i)

if (l.neqv..true.   )print *,'err'
end
