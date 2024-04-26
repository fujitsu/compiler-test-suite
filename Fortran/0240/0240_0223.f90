call s
print *,'pass'
end
subroutine s
integer, allocatable :: a(:), b(:)
allocate(a(1:10))
allocate(b(1:100))
call move_alloc(b, a)
if(ubound(a,1).ne.100) print *,'err1'
if(allocated(b).neqv..false.) print *,'err2'
end
