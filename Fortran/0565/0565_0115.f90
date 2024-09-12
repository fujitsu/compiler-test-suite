type ty
integer,allocatable :: c1(:)
character(len=2), allocatable :: ch(:,:)
end type

type ty1
type(ty),allocatable :: obj2(:)
end type

type(ty1) :: ob1

Allocate(ob1%obj2(4))
Allocate(ob1%obj2(1)%c1(2),ob1%obj2(1)%ch(3,4))
Allocate(ob1%obj2(2)%c1(2),ob1%obj2(2)%ch(3,4))
Allocate(ob1%obj2(3)%c1(2),ob1%obj2(3)%ch(3,4))
ob1%obj2(2)%c1 = 20
ob1%obj2(3)%c1 = 30
ob1%obj2(2)%ch = '20'
ob1%obj2(3)%ch = '30'

call s1((ob1%obj2(2)),ob1%obj2(3),ob1%obj2(1:3:2))
if(.NOT.  Allocated(ob1%obj2)) then
print *,201
else
 if(.NOT. Allocated(ob1%obj2(2)%ch)) then
 print *,301
 else
  if(.NOT.  Allocated(ob1%obj2(3)%ch)) then
  print *,401
  else
  if(ANY(ob1%obj2(2)%c1 .ne. 20)) print *,202, ob1%obj2(2)%c1
  if(ANY(ob1%obj2(3)%c1 .ne. 30)) print *,203, ob1%obj2(3)%c1
  if(ANY(ob1%obj2(2)%ch .ne. '20')) print *,204, ob1%obj2(2)%ch
  if(ANY(ob1%obj2(3)%ch .ne. '30')) print *,205, ob1%obj2(3)%ch
  end if
 end if
end if

print *,"Pass"
contains
subroutine s1(dmy,dmy2,dmy3)
    type(ty),value :: dmy
    type(ty),value :: dmy2
    type(ty),value :: dmy3(2)
    dmy2%c1 = 40
    dmy2%ch = '40'
    dmy3(1)%c1 = 40
    dmy3(2)%c1 = 40
    dmy3(1)%ch = '40'
    dmy3(2)%ch = '40'
    if(.NOT. Allocated(dmy%c1)) print *,101
    if(.NOT. Allocated(dmy2%c1)) print *,102
    if(.NOT. Allocated(dmy3(1)%c1)) print *,103
    if(.NOT. Allocated(dmy%ch)) print *,104
    if(.NOT. Allocated(dmy2%ch)) print *,105
    if(.NOT. Allocated(dmy3(2)%ch)) print *,106
    DEALLOCATE(dmy%c1,dmy%ch,dmy2%c1,dmy2%ch,dmy3(1)%c1,dmy3(1)%ch,dmy3(2)%c1,dmy3(2)%ch)
end subroutine
end
