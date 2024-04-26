type t0
 character(len=5) ::a(2)='datan'
 character(2) :: b='pn'
end type

type ty
type(t0) :: cmp
end type

type(ty),target,save :: obj(2)

character(len=2),pointer :: ptr1
character(len=2),pointer :: ptr2

data ptr1,ptr2/obj(2)%cmp%b,obj(1)%cmp%a(1)(1:2)/

if(ptr1 .ne. 'pn')print*,"101"
if(ptr2 .ne. 'da')print*,"102"
if(associated(ptr1) .eqv. .false.)print*,"103"
if(associated(ptr2) .eqv. .false.)print*,"104"
print*,"pass"
end
