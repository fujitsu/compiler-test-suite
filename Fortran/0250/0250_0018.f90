MODULE mod1
 TYPE ty
  CHARACTER(LEN=2)::ch(1:2)
  REAL::arr(2)
  COMPLEX(KIND=4)::brr(2)
 END TYPE
END MODULE

use mod1
type(ty),parameter::obj(*) = [ty(['ab','cd'],[1.1,2.2],[10.1,11.1]),ty(['hi','wi'],[1.1,2.2],[10.1,11.1])]
Real,parameter::r(*) =  obj(2)%arr
character(len = 2),parameter::c(*) = obj(1)%ch
complex,parameter::cmp(*) = obj(2)%brr

if(size(r) .EQ. size(c) .and. size(cmp) .eq. size(obj))then
print*,'Pass'
else
print*,'Fail'
endif
end
