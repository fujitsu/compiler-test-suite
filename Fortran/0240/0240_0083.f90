allocatable :: b(:)
pointer :: a
integer :: s
allocate(a,b(10))
deallocate (a, b, stat=s)
if (s.ne.0) print *,'err'

print *,'pass'
end
