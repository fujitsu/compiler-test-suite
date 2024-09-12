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

if(any(obj_ty(2)%ii /= 4))print *, 104 ,obj_ty(2)%ii
if(any(obj_ty(2)%rr < 4) .or. any(obj_ty(2)%rr > 5))print *, 105 ,obj_ty(2)%rr
if(any(obj_ty(2)%ch /= '4444'))print *, 106 ,obj_ty(2)%ch
if(any(obj_ty(2)%ll .neqv. .FALSE.))print *, 107 ,obj_ty(2)%ll
if(any(obj_ty(2)%cmp /= (4.0,4.4)))print *, 108 ,obj_ty(2)%cmp
if(any(obj_ty(2)%chd /= 'sub'))print *, 109 ,obj_ty(2)%chd
print *, "PASS"
contains
subroutine sub(dmy1)
type(ty) :: dmy1(:)

dmy1(2)%ii = 4
dmy1(2)%rr = 4.4
dmy1(2)%ch = '4444'
dmy1(2)%ll = .FALSE.
dmy1(2)%cmp = (4.0,4.4)
dmy1(2)%chd = 'sub'

call sub1(dmy1)

if(any(dmy1(2)%ii /= 4))print *, 204 ,dmy1(2)%ii
if(any(dmy1(2)%rr < 4) .or. any(dmy1(2)%rr > 5))print *, 205 ,dmy1(2)%rr
if(any(dmy1(2)%ch /= '4444'))print *, 206 ,dmy1(2)%ch
if(any(dmy1(2)%ll .neqv. .FALSE.))print *, 207 ,dmy1(2)%ll
if(any(dmy1(2)%cmp /= (4.0,4.4)))print *, 208 ,dmy1(2)%cmp
if(any(dmy1(2)%chd /= 'sub'))print *, 209 ,dmy1(2)%chd
end subroutine sub

subroutine sub1(dmy2)
type(ty),value :: dmy2(4)
dmy2(2)%ii = 3
dmy2(2)%rr = 3.3
dmy2(2)%ch = '3333'
dmy2(2)%ll = .FALSE.
dmy2(2)%cmp = (3.0,3.3)
dmy2(2)%chd = '333'
DEALLOCATE(dmy2(2)%ii,dmy2(2)%rr,dmy2(2)%ch,dmy2(2)%ll,dmy2(2)%cmp,dmy2(2)%chd)
end subroutine sub1

end
