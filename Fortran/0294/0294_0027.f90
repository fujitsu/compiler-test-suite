type str
integer,pointer :: r (:), s(:)
end type
type (str) :: sss 
allocate(sss%r(4))
sss%r = (/1,2,3,4/)
sss%s(4:) => sss%r
print *,sss%s
print *,lbound(sss%s),ubound(sss%s)
print *,'ok'
end
