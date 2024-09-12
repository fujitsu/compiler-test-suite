integer,target,save  :: tar1=2
integer,target,save  :: tar2(2)=4
integer,target,save  :: tar3(2)=5
integer,target,save  :: tar4(3)=6

type ty
  integer,pointer :: ptr1=>tar1
  integer ,pointer :: ptr2(:)=> tar2
  integer ,pointer :: ptr3=>tar3(1)
  integer ,pointer :: ptr4(:)=>tar4(1:2)
end type

type(ty),target::tar
type(ty),pointer :: obj=>tar
type ty2
   type(ty),pointer :: obj3=>tar
end type
type(ty2)::obj2(2)

if(obj%ptr1 .ne. 2) print*,"100"
if(associated(obj%ptr1) .eqv. .false.)print*,"101"

if(any(obj%ptr2 .ne. 4)) print*,"102"
if(associated(obj%ptr2) .eqv. .false.)print*,"103"

if(obj%ptr3 .ne. 5) print*,"104"
if(associated(obj%ptr3) .eqv. .false.)print*,"105"

if(any(obj%ptr4 .ne. 6)) print*,"106"
if(associated(obj%ptr4) .eqv. .false.)print*,"107"

print*,"pass"

end
