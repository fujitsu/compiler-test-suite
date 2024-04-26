MODULE mod1
 TYPE ty
  CHARACTER(LEN=2)::ch(1:2)
  REAL::arr(2)
  COMPLEX(KIND=4)::brr(2)
 END TYPE
END MODULE

use mod1
type(ty),parameter::obj(*,-2:*) = reshape([ty(['ab','cd'],[1.1,2.2],[10.1,11.1]),ty(['hi','wi'],[1.1,2.2],[10.1,11.1]),ty(['ho','wo'],[6.1,7.2],[2.1,3.1])],[1,3])
Integer,parameter::r1(*,*) = reshape(obj(1,0)%brr,[1,2])
character(len = 2),parameter::c(*) = obj(1,-1)%ch
complex,parameter::cmp(*) = ubound(obj)

if(size(c) .EQ. 2 .and. size(cmp) .eq. size(r1))then
print*,'Pass'
else
print*,'Fail'
endif
end
