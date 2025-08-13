module mod
  integer(4),pointer::p=>null()
  integer(4),target ::t=100
end module

use mod
write(2,*)t
p=>t
write(2,*)p,t
call sub
print *,'pass'
end
subroutine sub
integer v1,v2,v3
rewind 2
read(2,*) v1;if (v1/=100)print *,'error-1'
read(2,*) v2,v3
if (v2/=100)print *,'error-2'
if (v3/=100)print *,'error-3'
end
