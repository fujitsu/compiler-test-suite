integer,pointer :: r (:,:), s(:,:)
allocate(r(2,2))
r = reshape((/1,2,3,4/),(/2,2/))
s(4:,6:) => r
print *,r
print *,s
print *,lbound(s,1),ubound(s,1)
print *,lbound(s,2),ubound(s,2)
print *,'ok'
end
