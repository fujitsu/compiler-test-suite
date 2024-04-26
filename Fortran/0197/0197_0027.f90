character(:),allocatable:: a
allocate( character*1 :: a)
a='1'
if (a/='1') print *,101
print *,'pass'
end
