call s
print *,'pass'
end
subroutine s
integer, dimension (2,2) :: r
integer, dimension (2,2) :: m = reshape((/1,2,3,4/),(/2,2/))
integer, dimension (2,2) :: n = reshape((/3,3,3,3/),(/2,2/))
r = merge(m,n,m<n)
if(any(r/=reshape((/1,2,3,3/),(/2,2/)))) print *,'err'
end
