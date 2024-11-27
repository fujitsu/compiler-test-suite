call test01()
call test02()
print *,"pass"
end

subroutine test01()
type ty1
integer,allocatable:: ii(:)
end type
type(ty1),target     ,allocatable:: arr(:)
type(ty1),target     ,allocatable:: brr(:)
integer ,pointer :: ii(:)
allocate(arr(10))
allocate(brr(10))
do i=1,10
  allocate(arr(i)%ii(10))
  arr(i)%ii=(/1,2,3,4,5,6,7,8,9,10/)
end do
ii=>arr(1)%ii
call move_alloc(arr(1)%ii,brr(1)%ii)
if (.not.all(brr(1)%ii==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (.not.allocated(arr)) write(6,*) "NG"
if (allocated(arr(1)%ii)) write(6,*) "NG"
if (.not.allocated(arr(2)%ii)) write(6,*) "NG"
do i=2,10
call move_alloc(arr(i)%ii,brr(i)%ii)
end do
end subroutine

subroutine test02()
integer,target     ,allocatable:: arr(:)
integer     ,allocatable:: brr(:)
integer ,pointer :: ii(:)
allocate(arr(10))
allocate(brr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
ii=>arr
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine

