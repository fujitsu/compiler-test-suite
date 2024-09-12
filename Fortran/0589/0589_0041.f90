module m1
type ty
double precision, allocatable :: ii(:,:)
end type

type ts
type(ty) :: obj(4)
end type
end

use m1
type(ts), pointer :: pobj(:)
type(ts), allocatable, target :: trg(:)

allocate(pobj(2))
allocate(pobj(2)%obj(4)%ii(3,3))

pobj(2)%obj(4)%ii(1,2) = 11.11
pobj(2)%obj(4)%ii(3,2) = 13.11

ll() = pobj

pobj(2)%obj(4)%ii(1,2) = 21.11
pobj(2)%obj(4)%ii(3,2) = 23.11

if(size(trg) /= 2) print*,101
if(size(trg(2)%obj(4)%ii) /= 9) print*,102
if(trg(2)%obj(4)%ii(1,2) /= 11.11) print*, 103
if(trg(2)%obj(4)%ii(3,2) /= 13.11) print*, 104
print*, "PASS"

contains
function ll()
type(ts),pointer :: ll(:)

allocate(trg(2))
allocate(trg(1)%obj(2)%ii(2,2))
trg(1)%obj(2)%ii(2,1) = 12.11

ll => trg
end
end
