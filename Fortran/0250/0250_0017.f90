MODULE mod1
 TYPE ty
  CHARACTER(LEN=2)::ch(1:2)
  REAL::arr(2)
  COMPLEX(KIND=4)::brr(2)
 END TYPE
END MODULE

use mod1
type(ty),parameter::obj(*) = [ty(['ab','cd'],[1.1,2.2],[10.1,11.1]),ty(['hi','wi'],[1.1,2.2],[10.1,11.1])]

if(size(obj) .EQ. 2)then
print*,'Pass'
else
print*,'Fail'
endif
end
