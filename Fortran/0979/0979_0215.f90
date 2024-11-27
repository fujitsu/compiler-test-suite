print *,"pass"
end

subroutine test()
intrinsic :: move_alloc 
allocatable :: a(:),b(:)
allocate(b(10))
b=10
call move_alloc(a,b)
call move_alloc(FROM=a,TO=b)
end
