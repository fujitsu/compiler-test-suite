character*10 c
c=adjustl('    a')
if (c/='a')write(6,*) "NG"
print *,'pass'
end

