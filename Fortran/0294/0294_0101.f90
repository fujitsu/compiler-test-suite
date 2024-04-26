module mod
integer,pointer :: r(:), s(:,:)
end module
use mod
allocate(r(4))
r = (/1,2,3,4/)
s(4:5,7:8) => r
print *,s
print *,s(4,7)
print *,s(5,7)
print *,s(4,8)
print *,s(5,8)
print *,size(s),lbound(s,1),ubound(s,1)
print *,size(s),lbound(s,2),ubound(s,2)
print *,'ok'
end
