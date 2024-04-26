module mod
character(5),pointer :: r (:), s(:)
end module
use mod
allocate(r(4))
r = (/"1234","5678","9012","3456"/)
s(4:5) => r
print *,s
print *,lbound(s),ubound(s)
print *,'ok'
end
