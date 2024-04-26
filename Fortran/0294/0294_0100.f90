module mod
integer,pointer :: r (:), s(:)
end module
use mod
allocate(r(4))
r = (/1,2,3,4/)
s(4:7) => r
print *,s
print *,size(s),lbound(s),ubound(s)
s(4:5) => r
print *,s
print *,size(s),lbound(s),ubound(s)
print *,'ok'
end
