type ty
integer,allocatable :: ii(:)
real,allocatable :: rr(:)
character(len=4),allocatable :: ch(:)
logical,allocatable :: ll(:)
complex,allocatable :: cmp(:)
character(len=:),allocatable :: chd(:)
end type ty

type(ty) :: obj_ty(4)

allocate(obj_ty(2)%ii(3))
allocate(obj_ty(2)%rr(3))
allocate(obj_ty(2)%ch(3))
allocate(obj_ty(2)%ll(3))
allocate(obj_ty(2)%cmp(3))
allocate(character(3)::obj_ty(2)%chd(3))

obj_ty(2)%ii = 2
obj_ty(2)%rr = 2.2
obj_ty(2)%ch = '2222'
obj_ty(2)%ll = .TRUE.
obj_ty(2)%cmp = (2.0,2.2)
obj_ty(2)%chd = 'def'

call sub(obj_ty)

if(any(obj_ty(2)%ii /= 2))print *, 104 ,obj_ty(2)%ii
if(any(obj_ty(2)%rr < 2) .or. any(obj_ty(2)%rr > 3))print *, 105 ,obj_ty(2)%rr
if(any(obj_ty(2)%ch /= '2222'))print *, 106 ,obj_ty(2)%ch
if(any(obj_ty(2)%ll .neqv. .TRUE.))print *, 107 ,obj_ty(2)%ll
if(any(obj_ty(2)%cmp /= (2.0,2.2)))print *, 108 ,obj_ty(2)%cmp
if(any(obj_ty(2)%chd /= 'def'))print *, 109 ,obj_ty(2)%chd
print *, "PASS"

contains 
subroutine sub(dmy1)
type(ty),value :: dmy1(4)
call sub1(dmy1)
end subroutine sub

subroutine sub1(dmy2)
type(ty) :: dmy2(4)
dmy2(2)%ii = 3
dmy2(2)%rr = 3.3
dmy2(2)%ch = '3333'
dmy2(2)%ll = .FALSE.
dmy2(2)%cmp = (3.0,3.3)
dmy2(2)%chd = '333'
end subroutine sub1
end
