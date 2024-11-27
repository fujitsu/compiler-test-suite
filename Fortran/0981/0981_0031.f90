print *,"pass"
end

subroutine test01()
type ty0
  integer ,allocatable :: a(:)
  integer ,pointer :: b(:)
  type(ty0),pointer :: p
end type
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
  integer ,pointer :: yrr(:)
  type(ty0),pointer :: aaa(:)
end type
integer ,target :: ttt(10)
type(ty0),target  :: bbb(10)
type(ty1) ,allocatable :: str(:),sss(:)
allocate(str(10))
do i=1,10
str(i)%yrr=> ttt
str(i)%aaa=> bbb
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
do i=1,10
allocate(bbb(i)%a(10))
bbb(i)%a=10
allocate(bbb(i)%b(10))
bbb(i)%b=100
allocate(bbb(i)%p)
allocate(bbb(i)%p%a(10))
bbb(i)%p%a=20
allocate(bbb(i)%p%b(10))
bbb(i)%p%b=30
end do
if (sss(1)%aaa(2)%a(1).ne.10) write(6,*) "NG"
if (sss(1)%aaa(2)%b(1).ne.100) write(6,*) "NG"
if (sss(1)%aaa(2)%p%a(1).ne.20) write(6,*) "NG"
if (sss(1)%aaa(2)%p%b(1).ne.30) write(6,*) "NG"

end subroutine
subroutine test02()
save
type ty0
  integer ,allocatable :: a(:)
  integer ,pointer :: b(:)
  type(ty0),pointer :: p
end type
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
  integer ,pointer :: yrr(:)
  type(ty0),pointer :: aaa(:)
end type
integer ,target :: ttt(10)
type(ty0),target  :: bbb(10)
type(ty1) ,allocatable :: str(:),sss(:)
!$omp threadprivate(str,sss)
allocate(str(10))
do i=1,10
str(i)%yrr=> ttt
str(i)%aaa=> bbb
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
do i=1,10
allocate(bbb(i)%a(10))
bbb(i)%a=10
allocate(bbb(i)%b(10))
bbb(i)%b=100
allocate(bbb(i)%p)
allocate(bbb(i)%p%a(10))
bbb(i)%p%a=20
allocate(bbb(i)%p%b(10))
bbb(i)%p%b=30
end do
if (sss(1)%aaa(2)%a(1).ne.10) write(6,*) "NG"
if (sss(1)%aaa(2)%b(1).ne.100) write(6,*) "NG"
if (sss(1)%aaa(2)%p%a(1).ne.20) write(6,*) "NG"
if (sss(1)%aaa(2)%p%b(1).ne.30) write(6,*) "NG"

end subroutine
subroutine test03()
save
type ty0
  integer ,allocatable :: a(:)
  integer ,pointer :: b(:)
  type(ty0),pointer :: p
end type
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
  integer ,pointer :: yrr(:)
  type(ty0),pointer :: aaa(:)
end type
integer ,target :: ttt(10)
type(ty0),target  :: bbb(10)
type(ty1) ,allocatable :: str(:),sss(:)
!$omp single
!$omp parallel 
!$omp do private(str,sss)
do j=1,1
allocate(str(10))
do i=1,10
str(i)%yrr=> ttt
str(i)%aaa=> bbb
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
do i=1,10
allocate(bbb(i)%a(10))
bbb(i)%a=10
allocate(bbb(i)%b(10))
bbb(i)%b=100
allocate(bbb(i)%p)
allocate(bbb(i)%p%a(10))
bbb(i)%p%a=20
allocate(bbb(i)%p%b(10))
bbb(i)%p%b=30
end do
if (sss(1)%aaa(2)%a(1).ne.10) write(6,*) "NG"
if (sss(1)%aaa(2)%b(1).ne.100) write(6,*) "NG"
if (sss(1)%aaa(2)%p%a(1).ne.20) write(6,*) "NG"
if (sss(1)%aaa(2)%p%b(1).ne.30) write(6,*) "NG"
end do
!$omp end do
!$omp endparallel
!$omp endsingle
end subroutine
