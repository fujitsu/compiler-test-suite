implicit none
type ty
integer,allocatable :: ii(:,:)
real,allocatable :: rr(:,:)
character(len=4),allocatable :: ch(:,:)
complex,allocatable :: cmp(:,:)
logical , allocatable :: ll(:,:)
end type

type,extends(ty) :: ty1
character(len=:),allocatable:: ch1
end type
type(ty1) ,pointer:: obj1(:)
integer :: counter

Allocate(obj1(3))
Allocate(obj1(1)%ii(2,2),obj1(1)%rr(2,2),obj1(1)%ch(2,2),obj1(1)%cmp(2,2),obj1(1)%ll(2,2))
Allocate(obj1(2)%ii(2,2),obj1(2)%rr(2,2),obj1(2)%ch(2,2),obj1(2)%cmp(2,2),obj1(2)%ll(2,2))
Allocate(obj1(3)%ii(2,2),obj1(3)%rr(2,2),obj1(3)%ch(2,2),obj1(3)%cmp(2,2),obj1(3)%ll(2,2))
Allocate(character(len=5)::obj1(1)%ch1)
Allocate(character(len=5)::obj1(2)%ch1)
Allocate(character(len=5)::obj1(3)%ch1)
obj1(1)%ii = 21
obj1(2)%ii = 22
obj1(3)%ii = 23
obj1(1)%rr = 21.0
obj1(2)%rr = 22.0
obj1(3)%rr = 23.0
obj1(1)%ch = '21'
obj1(2)%ch = '22'
obj1(3)%ch = '23'
obj1(1)%cmp = (21.0,21.0)
obj1(2)%cmp = (22.0,22.0)
obj1(3)%cmp = (23.0,23.0)
obj1(1)%ll = .TRUE.
obj1(2)%ll = .FALSE.
obj1(3)%ll = .FALSE.
obj1(1)%ch1 = '20000'
obj1(2)%ch1 = '20000'
obj1(3)%ch1 = '30000'

call s1(obj1(1:3:2),(obj1),obj1)

do counter = 1,3,2
if((.NOT. Allocated(obj1(counter)%ii)) .or. (.NOT. Allocated(obj1(counter)%rr))  .or. (.NOT. Allocated(obj1(counter)%ch)) .or. (.NOT. Allocated(obj1(counter)%cmp) ) .or. (.NOT. Allocated(obj1(counter)%ll))) then
print *,201
else
  if(counter == 1) then
 if(ANY(obj1(1)%ii .ne. 21)) print *,202, obj1(1)%ii
 if(ANY(obj1(1)%rr .ne. 21.0)) print *,204, obj1(1)%rr
 if(ANY(obj1(1)%ch .ne. '21')) print *,206, obj1(1)%ch
 if(ANY(obj1(1)%cmp .ne. (21.0,21.0))) print *,208, obj1(1)%cmp
 if(ANY(obj1(1)%ll .neqv. .TRUE.)) print *,210, obj1(1)%ll
 end if
 if(counter == 3) then
 if(ANY(obj1(counter)%ii .ne. 23)) print *,203, obj1(counter)%ii
 if(ANY(obj1(counter)%rr .ne. 23.0)) print *,205, obj1(counter)%rr
 if(ANY(obj1(counter)%ch .ne. '23')) print *,207, obj1(counter)%ch
 if(ANY(obj1(counter)%cmp .ne. (23.0,23.0))) print *,209, obj1(counter)%cmp
 if(ANY(obj1(counter)%ll .neqv. .FALSE.)) print *,211, obj1(counter)%ll
 end if
end if

if(.NOT. Allocated(obj1(counter)%ch1)) then
print *,301
else
 if(counter == 1) then
 if(obj1(1)%ch1 .ne. '20000') print *,302, obj1(1)%ch1
 end if
 if(counter == 3) then
 if(obj1(3)%ch1 .ne. '30000') print *,303, obj1(3)%ch1
 end if
end if
end do

print *,"Pass"
contains
subroutine s1(dmy,dmy2,dmy3)
    type(ty1),value :: dmy(2),dmy2(:)
    type(ty1),value :: dmy3(:) 
    integer :: counter
    dmy(1)%ii = 41
    dmy(2)%ii = 42
    dmy(1)%rr = 41.0
    dmy(2)%rr = 42.0
    dmy(1)%ch = '41'
    dmy(2)%ch = '42'
    dmy(1)%cmp = (41.0,41.0)
    dmy(2)%cmp = (42.0,42.0)
    dmy(1)%ll = .FALSE.
    dmy(2)%ll = .TRUE.
    dmy(1)%ch1 = '40000'
    dmy(2)%ch1 = '40000'
    if(.NOT. Allocated(dmy(1)%ii)) print *,101
    if(.NOT. Allocated(dmy(2)%ii)) print *,102
    if(.NOT. Allocated(dmy(1)%rr)) print *,103
    if(.NOT. Allocated(dmy(2)%rr)) print *,104
    if(.NOT. Allocated(dmy(1)%ch)) print *,105
    if(.NOT. Allocated(dmy(2)%ch)) print *,106
    if(.NOT. Allocated(dmy(1)%cmp)) print *,107
    if(.NOT. Allocated(dmy(2)%cmp)) print *,108
    if(.NOT. Allocated(dmy(1)%ll)) print *,109
    if(.NOT. Allocated(dmy(2)%ll)) print *,110
    if(.NOT. Allocated(dmy(1)%ch1)) print *,111
    if(.NOT. Allocated(dmy(2)%ch1)) print *,112
    Deallocate(dmy(1)%ii)
    Deallocate(dmy(2)%ii)
    Deallocate(dmy(1)%rr)
    Deallocate(dmy(2)%rr)
    Deallocate(dmy(1)%ch)
    Deallocate(dmy(2)%ch)
    Deallocate(dmy(1)%cmp)
    Deallocate(dmy(2)%cmp)
    Deallocate(dmy(1)%ll)
    Deallocate(dmy(2)%ll)
    Deallocate(dmy(1)%ch1)
    Deallocate(dmy(2)%ch1)
do counter = 1,3
    if(size(dmy2(counter)%ii) /= 4) print *,701
    if(size(dmy2(counter)%rr) /= 4) print *,702
    if(size(dmy2(counter)%ch) /= 4) print *,703
    if(size(dmy2(counter)%cmp) /= 4) print *,704
    if(size(dmy2(counter)%ll) /= 4) print *,705
    if(LEN(dmy2(counter)%ch1) /= 5) print *,706
    if(.NOT. Allocated(dmy2(counter)%ii)) print *,101
    if(.NOT. Allocated(dmy2(counter)%rr)) print *,103
    if(.NOT. Allocated(dmy2(counter)%ch)) print *,105
    if(.NOT. Allocated(dmy2(counter)%cmp)) print *,107
    if(.NOT. Allocated(dmy2(counter)%ll)) print *,109
    if(.NOT. Allocated(dmy2(counter)%ch1)) print *,111
    Deallocate(dmy2(counter)%ii)
    Deallocate(dmy2(counter)%rr)
    Deallocate(dmy2(counter)%ch)
    Deallocate(dmy2(counter)%cmp)
    Deallocate(dmy2(counter)%ll)
    Deallocate(dmy2(counter)%ch1)

  dmy3(counter)%ii = 99
  dmy3(counter)%rr = 99.99
  dmy3(counter)%ch = '99'
  dmy3(counter)%cmp = (99.99,90.99)
  dmy3(counter)%ll = .FALSE.
  dmy3(counter)%ch1 = '99999'
    if(.NOT. Allocated(dmy3(counter)%ii)) print *,101
    if(.NOT. Allocated(dmy3(counter)%rr)) print *,103
    if(.NOT. Allocated(dmy3(counter)%ch)) print *,105
    if(.NOT. Allocated(dmy3(counter)%cmp)) print *,107
    if(.NOT. Allocated(dmy3(counter)%ll)) print *,109
    if(.NOT. Allocated(dmy3(counter)%ch1)) print *,111
    Deallocate(dmy3(counter)%ii)
    Deallocate(dmy3(counter)%rr)
    Deallocate(dmy3(counter)%ch)
    Deallocate(dmy3(counter)%cmp)
    Deallocate(dmy3(counter)%ll)
    Deallocate(dmy3(counter)%ch1)
end do
end subroutine
end
