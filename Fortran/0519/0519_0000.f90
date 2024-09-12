subroutine s1
character(:),allocatable::to,fm
allocate(fm,source='123')
call move_alloc(fm,to)
if(to/='123')print *,1001
end
call s1
print *,'pass'
end
