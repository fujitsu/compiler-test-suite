module mod
integer,pointer :: r (:,:,:), s(:,:)
end module
use mod
allocate(r(2,2,2))
r = reshape((/1,2,3,4,5,6,7,8/),(/2,2,2/))
s(4:,6:) => r(1:,1:,2)
print *,r
print *,s
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
print *,'ok'
end
