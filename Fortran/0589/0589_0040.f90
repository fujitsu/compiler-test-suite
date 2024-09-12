module m1
type ty
integer,allocatable :: ii(:,:)
character(LEN=3),allocatable :: ch(:)
end type
end

use m1
type(ty),pointer :: pobj
type(ty),target :: trg
allocate(pobj)
allocate(pobj%ii(3,3))
allocate(pobj%ch(5))
pobj%ii(:,:) = 0
pobj%ch(:) = '\0'
pobj%ii(1,2) = 11
pobj%ii(3,2) = 13
pobj%ch(2)(1:3) = "abc"

ll() = pobj

if(trg%ii(1,2) /= 11) print*, 105
if(trg%ii(2,1) /= 0) print*, 106
if(trg%ii(3,2) /= 13) print*, 107
if(trg%ch(2)(1:3) /= "abc") print *,108

pobj%ii(1,2) = 21
pobj%ii(3,2) = 23

if(size(trg%ii) /= 9) print*,101
if(size(trg%ch) /= 5) print*,109
if(size(pobj%ch) /= 5) print*,110
if(trg%ii(1,2) /= 11) print*, 102
if(trg%ii(2,1) /= 0) print*, 103
if(trg%ii(3,2) /= 13) print*, 104
if(trg%ch(2)(1:3) /= "abc") print *,108
if(trg%ch(3)(1:3) == "xyz") print *,111
print*, "Pass"

contains
function ll()
type(ty),pointer :: ll
allocate(trg%ii(2,2))
allocate(trg%ch(3))
trg%ii(2,1) = 12
trg%ch(3)(1:3) = "xyz"
ll => trg
end
end
