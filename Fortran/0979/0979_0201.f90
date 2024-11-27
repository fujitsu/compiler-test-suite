call test01()
call test02()
call test03()
call test04()
call test05()
print *,"pass"
end

subroutine test01()
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
  integer ,pointer :: yrr(:)
end type
integer ,target :: ttt(10)
type(ty1) ,allocatable :: str(:),sss(:)
allocate(str(10))
do i=1,10
str(i)%yrr=> ttt
str(i)%xrr=(/(i,i=1,20)/)
allocate(str(i)%arr(10))
str(i)%arr=(/(i,i=1,10)/)
allocate(str(i)%brr(10,10))
str(i)%brr=3
allocate(str(i)%crr(10,10,10))
str(i)%crr=4
end do
call move_alloc(str,sss)
if (.not.allocated(sss)) write(6,*) "NG"
if (.not.allocated(sss(1)%arr)) write(6,*) "NG"
if (.not.allocated(sss(1)%brr)) write(6,*) "NG"
if (.not.allocated(sss(1)%crr)) write(6,*) "NG"
if (sss(1)%arr(2).ne.2) write(6,*) "NG"
if (sss(1)%xrr(20).ne.20) write(6,*) "NG"
if (sss(1)%brr(1,2).ne.3) write(6,*) "NG"
if (sss(1)%crr(1,2,3).ne.4) write(6,*) "NG"
ttt=(/(i,i=1,10)/)+10
if (sss(1)%yrr(2).ne.12) write(6,*) "NG"
end subroutine
subroutine test02()
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
  integer ,pointer :: yrr(:)
end type
integer ,target :: ttt(10)
type tt
type(ty1) ,allocatable :: str(:),sss(:)
end type
type(tt) :: vvv
allocate(vvv%str(10))
do i=1,10
vvv%str(i)%yrr=> ttt
vvv%str(i)%xrr=(/(i,i=1,20)/)
allocate(vvv%str(i)%arr(10))
vvv%str(i)%arr=(/(i,i=1,10)/)
allocate(vvv%str(i)%brr(10,10))
vvv%str(i)%brr=3
allocate(vvv%str(i)%crr(10,10,10))
vvv%str(i)%crr=4
end do
call move_alloc(vvv%str,vvv%sss)
if (.not.allocated(vvv%sss)) write(6,*) "NG"
if (.not.allocated(vvv%sss(1)%arr)) write(6,*) "NG"
if (.not.allocated(vvv%sss(1)%brr)) write(6,*) "NG"
if (.not.allocated(vvv%sss(1)%crr)) write(6,*) "NG"
if (vvv%sss(1)%arr(2).ne.2) write(6,*) "NG"
if (vvv%sss(1)%xrr(20).ne.20) write(6,*) "NG"
if (vvv%sss(1)%brr(1,2).ne.3) write(6,*) "NG"
if (vvv%sss(1)%crr(1,2,3).ne.4) write(6,*) "NG"
ttt=(/(i,i=1,10)/)+10
if (vvv%sss(1)%yrr(2).ne.12) write(6,*) "NG"
end subroutine
subroutine test03()
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
  integer ,pointer :: yrr(:)
end type
integer ,target :: ttt(10)
type tt
type(ty1) ,allocatable :: str(:),sss(:)
end type
type(tt) ,pointer :: vvv
allocate(vvv)
allocate(vvv%str(10))
do i=1,10
vvv%str(i)%yrr=> ttt
vvv%str(i)%xrr=(/(i,i=1,20)/)
allocate(vvv%str(i)%arr(10))
vvv%str(i)%arr=(/(i,i=1,10)/)
allocate(vvv%str(i)%brr(10,10))
vvv%str(i)%brr=3
allocate(vvv%str(i)%crr(10,10,10))
vvv%str(i)%crr=4
end do
call move_alloc(vvv%str,vvv%sss)
if (.not.allocated(vvv%sss)) write(6,*) "NG"
if (.not.allocated(vvv%sss(1)%arr)) write(6,*) "NG"
if (.not.allocated(vvv%sss(1)%brr)) write(6,*) "NG"
if (.not.allocated(vvv%sss(1)%crr)) write(6,*) "NG"
if (vvv%sss(1)%arr(2).ne.2) write(6,*) "NG"
if (vvv%sss(1)%xrr(20).ne.20) write(6,*) "NG"
if (vvv%sss(1)%brr(1,2).ne.3) write(6,*) "NG"
if (vvv%sss(1)%crr(1,2,3).ne.4) write(6,*) "NG"
ttt=(/(i,i=1,10)/)+10
if (vvv%sss(1)%yrr(2).ne.12) write(6,*) "NG"
end subroutine
subroutine test04()
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
  integer ,pointer :: yrr(:)
end type
integer ,target :: ttt(10)
type tt
type(ty1) ,allocatable :: str(:),sss(:)
end type
type(tt) ,pointer :: vvv
type(tt) ,allocatable :: nnn(:)
allocate(vvv)
allocate(nnn(1))
allocate(vvv%str(10))
do i=1,10
vvv%str(i)%yrr=> ttt
vvv%str(i)%xrr=(/(i,i=1,20)/)
allocate(vvv%str(i)%arr(10))
vvv%str(i)%arr=(/(i,i=1,10)/)
allocate(vvv%str(i)%brr(10,10))
vvv%str(i)%brr=3
allocate(vvv%str(i)%crr(10,10,10))
vvv%str(i)%crr=4
end do
call move_alloc(vvv%str,nnn(1)%sss)
if (.not.allocated(nnn(1)%sss)) write(6,*) "NG"
if (.not.allocated(nnn(1)%sss(1)%arr)) write(6,*) "NG"
if (.not.allocated(nnn(1)%sss(1)%brr)) write(6,*) "NG"
if (.not.allocated(nnn(1)%sss(1)%crr)) write(6,*) "NG"
if (nnn(1)%sss(1)%arr(2).ne.2) write(6,*) "NG"
if (nnn(1)%sss(1)%xrr(20).ne.20) write(6,*) "NG"
if (nnn(1)%sss(1)%brr(1,2).ne.3) write(6,*) "NG"
if (nnn(1)%sss(1)%crr(1,2,3).ne.4) write(6,*) "NG"
ttt=(/(i,i=1,10)/)+10
if (nnn(1)%sss(1)%yrr(2).ne.12) write(6,*) "NG"
end subroutine

subroutine test05()
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
  integer ,pointer :: yrr(:)
end type
integer ,target :: ttt(10)
type tt
type(ty1) ,allocatable :: str(:),sss(:)
end type
type(tt)          :: vvv
type(tt) ,allocatable :: nnn(:)
allocate(nnn(2))
allocate(vvv%str(10))
do i=1,10
vvv%str(i)%yrr=> ttt
vvv%str(i)%xrr=(/(i,i=1,20)/)
allocate(vvv%str(i)%arr(10))
vvv%str(i)%arr=(/(i,i=1,10)/)
allocate(vvv%str(i)%brr(10,10))
vvv%str(i)%brr=3
allocate(vvv%str(i)%crr(10,10,10))
vvv%str(i)%crr=4
end do
call move_alloc(vvv%str,nnn(1)%sss)
if (.not.allocated(nnn(1)%sss)) write(6,*) "NG"
if (.not.allocated(nnn(1)%sss(1)%arr)) write(6,*) "NG"
if (.not.allocated(nnn(1)%sss(1)%brr)) write(6,*) "NG"
if (.not.allocated(nnn(1)%sss(1)%crr)) write(6,*) "NG"
if (nnn(1)%sss(1)%arr(2).ne.2) write(6,*) "NG"
if (nnn(1)%sss(1)%xrr(20).ne.20) write(6,*) "NG"
if (nnn(1)%sss(1)%brr(1,2).ne.3) write(6,*) "NG"
if (nnn(1)%sss(1)%crr(1,2,3).ne.4) write(6,*) "NG"
ttt=(/(i,i=1,10)/)+10
if (nnn(1)%sss(1)%yrr(2).ne.12) write(6,*) "NG"

call move_alloc(nnn(1)%sss,nnn(2)%sss)
if (.not.allocated(nnn(2)%sss)) write(6,*) "NG"
if (.not.allocated(nnn(2)%sss(1)%arr)) write(6,*) "NG"
if (.not.allocated(nnn(2)%sss(1)%brr)) write(6,*) "NG"
if (.not.allocated(nnn(2)%sss(1)%crr)) write(6,*) "NG"
if (nnn(2)%sss(1)%arr(2).ne.2) write(6,*) "NG"
if (nnn(2)%sss(1)%xrr(20).ne.20) write(6,*) "NG"
if (nnn(2)%sss(1)%brr(1,2).ne.3) write(6,*) "NG"
if (nnn(2)%sss(1)%crr(1,2,3).ne.4) write(6,*) "NG"
ttt=(/(i,i=1,10)/)+10
if (nnn(2)%sss(1)%yrr(2).ne.12) write(6,*) "NG"


end subroutine

