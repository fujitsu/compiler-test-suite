module mod
  logical(4),pointer::p=>null()
  logical(4),target ::t=.false.
end module

use mod
write(1,*)t
p=>t
write(1,*)p,t
call sub
print *,'pass'
end
subroutine sub
logical v1,v2,v3
rewind 1
read(1,*) v1;if (v1)print *,'error-1' 
read(1,*) v2,v3
if (v2)print *,'error-2' 
if (v3)print *,'error-3' 
end
