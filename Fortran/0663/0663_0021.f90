module mod
real  array(512,512)
contains
subroutine subb()
real  arrayb(512,512)
array(1,1)=1
array(1,1)= array(1,1)
arrayb(1,1)=1
arrayb(1,1)= arrayb(1,1)
end subroutine
end
use mod
print *,'pass'
end