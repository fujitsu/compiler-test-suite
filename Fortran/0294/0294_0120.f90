module mod
type :: str
  character(:),pointer :: r (:), s(:)
end type
type (str) :: sss
end module
use mod
allocate(character(5)::sss%r(4))
sss%r = (/"1234","5678","9012","3456"/)
sss%s(4:) => sss%r
print *,sss%s
print *,lbound(sss%s),ubound(sss%s)
print *,len(sss%s(4))
print *,'ok'
end
