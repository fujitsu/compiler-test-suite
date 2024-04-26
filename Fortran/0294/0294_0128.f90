module mod
type str
integer,pointer :: r(:), s(:,:)
end type
type(str) :: sss
end module
use mod
allocate(sss%r(4))
sss%r = (/1,2,3,4/)
sss%s(4:5,7:8) => sss%r
print *,sss%s
print *,sss%s(4,7)
print *,sss%s(5,7)
print *,sss%s(4,8)
print *,sss%s(5,8)
print *,size(sss%s),lbound(sss%s,1),ubound(sss%s,1)
print *,size(sss%s),lbound(sss%s,2),ubound(sss%s,2)
print *,'ok'
end
