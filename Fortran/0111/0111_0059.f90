module mdef
real(4),parameter::r4=1.0
real(8),parameter::r8=1.0
type tdef
complex(8)::c8=(r4,r8)
end type
end module

use mdef
type(tdef)::t
if ( (real(t%c8) - 1.0 ) < 0.000001 ) then
  print *,'pass'
else
  print *,'ng',t%c8
endif
end
