subroutine s1
character(100)::msg=''
character(1),allocatable:: a1(:)
character(2),allocatable:: a2(:)
character(:),pointer    :: x(:) 
allocate(x,source=['1'])
if (any(x/='1')) print *,101
allocate(a1,source=x)
if (any(a1/='1')) print *,102
deallocate(a1)
allocate(a1,a2,errmsg=msg,stat=k,source=x)
if (any(a1/='1')) print *,112
if (msg=='') print *,103
if (k==0) print *,104
end
call s1
print *,'pass'
end
