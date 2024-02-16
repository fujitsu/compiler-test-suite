character(:),allocatable::to,fm
 allocate(to,source='abcdef')
 allocate(fm,source='123')
 call move_alloc(fm,to)
 if(to/='123')print *,"err"
 if(allocated(fm).neqv..false.) print *,'err1'
print *,"pass"
end
