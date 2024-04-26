call test()
print *,'pass'
end
subroutine test()
integer, pointer :: a, b(:,:)
integer, target :: c
a => c
allocate (b(3,2))
b=1
c=100
if (b(1,1).ne.1   )print *,'err'
if (a.ne.100   )print *,'err'
end
