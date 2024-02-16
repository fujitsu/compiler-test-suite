character(:),allocatable::a,b
character(:),allocatable::c(:),d(:)
call move_alloc(a,b)
call move_alloc(c,d)
if(allocated(b).neqv..false.) print *,'err'
if(allocated(d).neqv..false.) print *,'err'
print *,'pass'
end
