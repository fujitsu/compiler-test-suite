module mod
contains
function intf()
intf=0
end function
subroutine ss
end subroutine
end
use mod
type x
  procedure(),pointer,nopass::p
end type
type(x)::v1=x(intf)
type(x)::v2
data v2/x(intf)/
type(x)::v3=x(ss  )
type(x)::v4
data v4/x(ss  )/
end
