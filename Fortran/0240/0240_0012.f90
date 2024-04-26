call test()
print *,'pass'
end
subroutine test()
logical :: l,m

integer, pointer :: n
integer, allocatable, dimension (:,:) :: k
allocate (k(4,-2:3))
allocate (n)

l = associated (n)
if (l.neqv..true.   )print *,'err'
m = allocated (k)
if (m.neqv..true.   )print *,'err'
deallocate (n,k)
end
