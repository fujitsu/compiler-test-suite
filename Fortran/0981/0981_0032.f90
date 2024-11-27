print *,"pass"
end

subroutine test00()
save
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
end type
integer ,target :: ttt(10)
type(ty1) ,allocatable :: str(:),sss(:)
type(ty1)              :: sstr(1),ssss(1)
!$omp threadprivate(str,sss)
!$omp single
!$omp parallel copyin(str,sss)
!$omp sections private(sstr,ssss)
!$omp section
do i=1,20
end do
!$omp section
do i=1,20
end do
!$omp end sections
do j=1,1
allocate(str(10))
do i=1,10
str(i)%xrr=(/(i,i=1,20)/)
allocate(str(i)%arr(10))
str(i)%arr=(/(i,i=1,10)/)
allocate(str(i)%brr(10,10))
str(i)%brr=3
allocate(str(i)%crr(10,10,10))
str(i)%crr=4
end do
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
!$omp endparallel
!$omp endsingle
end subroutine


subroutine test01()
save
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
end type
integer ,target :: ttt(10)
type(ty1) ,allocatable :: str(:),sss(:)
!$omp single
!$omp parallel
!$omp do firstprivate(str,sss)
do j=1,1
allocate(str(10))
do i=1,10
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
end do
!$omp end do
!$omp endparallel
!$omp endsingle
end subroutine


subroutine test02()
save
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
end type
integer ,target :: ttt(10)
type(ty1) ,allocatable :: str(:),sss(:)
!$omp single
!$omp parallel
!$omp do lastprivate(str,sss)
do j=1,1
allocate(str(10))
do i=1,10
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
end do
!$omp end do
!$omp endparallel
!$omp endsingle
end subroutine



subroutine test03()
save
type ty1
  integer ,allocatable :: arr(:)
  integer ,allocatable :: brr(:,:)
  integer ,allocatable :: crr(:,:,:)
  integer :: xrr(20)
end type
integer ,target :: ttt(10)
type(ty1) ,allocatable :: str(:),sss(:)
!$omp single
!$omp parallel private(str,sss)
!$omp do private(str,sss)
do j=1,1
allocate(str(10))
do i=1,10
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
end do
!$omp end do
!$omp endparallel
!$omp endsingle
end subroutine
