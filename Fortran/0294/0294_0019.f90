character(:),pointer :: r (:), s(:)
character(:),pointer :: rr (:), ss(:)
allocate(character(5)::r(4),ss(4))
allocate(character(7)::s(4),rr(4))
r = (/"1234","5678","9012","3456"/)
rr = (/"1234567","5678901","2345678","9012345"/)
s(4:5) => r
ss(4:5) => rr
print *,s
print *,lbound(s),ubound(s)
print *,len(s(4))
print *,ss
print *,lbound(ss),ubound(ss)
print *,len(ss(4))
print *,'ok'
end
