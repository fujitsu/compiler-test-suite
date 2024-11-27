integer, allocatable :: a(:), b(:)
allocate(a(1:10))
allocate(b(1:100))
call move_alloc(b, a)

if(LBOUND(a,1) .ne. 1) write(6,*) "NG"
if(UBOUND(a,1) .ne. 100) write(6,*) "NG"
if(ALLOCATED(b) .eqv. .TRUE.) write(6,*) "NG"

print *,'pass'
end
