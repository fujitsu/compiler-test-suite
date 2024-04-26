call test()
print *,'pass'
end
subroutine test()
integer,allocatable :: a(:),b(:)
integer :: s
allocate(a(1),b(2))
deallocate (a,b,stat=s)
if (s.ne.0   )print *,'err'
end
