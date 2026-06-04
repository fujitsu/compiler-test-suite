subroutine sub(arr,x)
complex :: x
real::arr(10)
associate(p=>x)
block
integer :: arr(int(p%im))
arr=1
arr(1   :10:1) =2
if (size(arr)/=10) print *,902
if (any(arr/=2)) print *,908
end block
end associate
end
real    :: a(10)
complex ::v 
v=(1.0,10.0)
call sub(a,v)
print *,'sngg952q : pass'
end
