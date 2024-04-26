call test()
print *,'pass'
end
subroutine test()
integer :: a,b,c(:,:,:)
dimension :: b(:,:)
allocatable a(:),b,c
allocate (a(2),b(3,-1:1),c(10,10,10))
if (ubound(a,1).ne.2   )print *,'err'
if (ubound(b,1).ne.3   )print *,'err'
if (ubound(b,2).ne.1   )print *,'err'
if (lbound(b,2).ne.-1  )print *,'err'
if (ubound(c,1).ne.10   )print *,'err'
if (ubound(c,2).ne.10   )print *,'err'
if (ubound(c,3).ne.10   )print *,'err'
deallocate (a,b,c)
end
