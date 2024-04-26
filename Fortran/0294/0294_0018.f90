character(:),pointer :: r (:), s(:)
allocate(character(5)::r(4))
r = (/"1234","5678","9012","3456"/)
s(4:5) => r
print *,s
print *,lbound(s),ubound(s)
print *,len(s(4))
print *,'ok'
end
