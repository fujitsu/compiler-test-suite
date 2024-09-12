module m1
type ty
integer,allocatable :: ii
end type
end

use m1
type(ty),pointer :: pobj
type(ty),target :: trg
integer,allocatable :: jj
allocate(pobj)
allocate(pobj%ii)
pobj%ii = 20

ll() = pobj

if (trg%ii /= 20) print*,101
deallocate(trg%ii)
allocate(jj)
jj = 40
if (pobj%ii /= 20) print *,102
print *,"Pass"
contains
       function ll()
       type(ty),pointer :: ll
       ll=>trg
       allocate(trg%ii)
       trg%ii = 10
       if (trg%ii /= 10) print *,100
       end function
end
