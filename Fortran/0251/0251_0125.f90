type tt
 integer :: ii=1
end type

type bt
 integer :: ii=2
end type

type,extends(tt) :: ty2
 integer :: jj=3
end type

type(ty2),target :: mobj,mobj2(3,4)
class(*),pointer :: uobj,uobj2(:,:)

block
type,extends(bt) :: ty3
 integer :: jj=4
end type

type(ty3),target :: bobj,bobj2(2,3)
class(bt),allocatable :: pobj,pobj2(:,:)

if(same_type_as(bobj,mobj) .neqv. .false.) print*,101
if(extends_type_of(bobj,mobj) .neqv. .false.) print*,102
if(extends_type_of(bobj,tt(2)) .neqv. .false.) print*,103
if(extends_type_of(bobj,bt(2)) .neqv. .true.) print*,104

if(same_type_as(bobj2,mobj2) .neqv. .false.) print*,101
if(extends_type_of(bobj2,mobj2) .neqv. .false.) print*,102
if(extends_type_of(bobj2,tt(2)) .neqv. .false.) print*,103
if(extends_type_of(bobj2,bt(2)) .neqv. .true.) print*,104

uobj=>mobj
uobj2=>mobj2
allocate(pobj,source=bobj)
allocate(pobj2,source=bobj2)

if(same_type_as(pobj,uobj) .neqv. .false.) print*,105
if(extends_type_of(pobj,uobj) .neqv. .false.) print*,106
if(extends_type_of(pobj,tt(2)) .neqv. .false.) print*,107
if(extends_type_of(pobj,bt(2)) .neqv. .true.) print*,108

if(same_type_as(pobj2,uobj2) .neqv. .false.) print*,105
if(extends_type_of(pobj2,uobj2) .neqv. .false.) print*,106
if(extends_type_of(pobj2,tt(2)) .neqv. .false.) print*,107
if(extends_type_of(pobj2,bt(2)) .neqv. .true.) print*,108

uobj=>bobj
uobj2=>bobj2

if(same_type_as(pobj,uobj) .neqv. .true.) print*,109
if(extends_type_of(pobj,uobj) .neqv. .true.) print*,110
if(extends_type_of(pobj,bt(2)) .neqv. .true.) print*,111
if(extends_type_of(pobj,tt(2)) .neqv. .false.) print*,112

if(same_type_as(ty3(2,4),mobj) .neqv. .false.) print*,113
if(extends_type_of(ty3(2,4),mobj) .neqv. .false.) print*,114

if(same_type_as(pobj2,uobj2) .neqv. .true.) print*,109
if(extends_type_of(pobj2,uobj2) .neqv. .true.) print*,110
if(extends_type_of(pobj2,bt(2)) .neqv. .true.) print*,111
if(extends_type_of(pobj2,tt(2)) .neqv. .false.) print*,112

if(same_type_as(ty3(2,4),mobj2) .neqv. .false.) print*,113
if(extends_type_of(ty3(2,4),mobj2) .neqv. .false.) print*,114

print*,'pass'
end block
end
