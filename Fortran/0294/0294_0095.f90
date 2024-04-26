module mod
integer,pointer :: r (:,:,:), s(:,:)
integer :: lower01 = 4
integer :: lower02 = 6
end module
use mod
allocate(r(2,2,2))
r = reshape((/1,2,3,4,5,6,7,8/),(/2,2,2/))
s(lower01+1:,lower02+1:) => r(1:,1:,2)
print *,r
print *,s
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
print *,'ok'
end
