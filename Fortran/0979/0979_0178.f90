call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
call test10()
call test11()
call test12()
call test13()
call test14()
call test15()
call test16()
call test17()
call test18()
print *,"pass"
end

subroutine test18()
character(len =2),allocatable:: arr(:)
character(len =2),allocatable:: brr(:)
call sss(arr,brr,1)
contains
subroutine sss(arr,brr,i)
character(len =i+1),allocatable:: arr(:)
character(len =2),allocatable:: brr(:)
allocate(arr(10))
arr=(/"1","2","3","4","5","6","7","8","9","0"/)
call move_alloc(arr,brr)
if (.not.all(brr==(/"1","2","3","4","5","6","7","8","9","0"/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
end subroutine


subroutine test17()
character(len =1),allocatable:: arr(:)
character(len =1),allocatable:: brr(:)
call sss(arr,brr,1)
contains
subroutine sss(arr,brr,i)
character(len =i),allocatable:: arr(:)
character(len =i),allocatable:: brr(:)
allocate(arr(10))
arr=(/"1","2","3","4","5","6","7","8","9","0"/)
call move_alloc(arr,brr)
if (.not.all(brr==(/"1","2","3","4","5","6","7","8","9","0"/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
end subroutine

subroutine test15()
character(kind=1),allocatable:: arr(:)
character(kind=1),allocatable:: brr(:)
allocate(arr(10))
arr=(/"1","2","3","4","5","6","7","8","9","0"/)
call move_alloc(arr,brr)
if (.not.all(brr==(/"1","2","3","4","5","6","7","8","9","0"/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine

subroutine test16()
type ty1
integer ii
end type
type(ty1)      ,allocatable:: arr(:)
type(ty1)      ,allocatable:: brr(:)
allocate(arr(10))
arr%ii=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr%ii==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine

subroutine test01()
integer(kind=1),allocatable:: arr(:)
integer(kind=1),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test02()
integer(kind=2),allocatable:: arr(:)
integer(kind=2),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test03()
integer(kind=4),allocatable:: arr(:)
integer(kind=4),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test04()
integer(kind=8),allocatable:: arr(:)
integer(kind=8),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test05()
real   (kind=4),allocatable:: arr(:)
real   (kind=4),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test06()
real   (kind=8),allocatable:: arr(:)
real   (kind=8),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test07()
real   (kind=16),allocatable:: arr(:)
real   (kind=16),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test08()
complex(kind=4),allocatable:: arr(:)
complex(kind=4),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test09()
complex(kind=8),allocatable:: arr(:)
complex(kind=8),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test10()
complex(kind=16),allocatable:: arr(:)
complex(kind=16),allocatable:: brr(:)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(arr,brr)
if (.not.all(brr==(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine

subroutine test11()
logical(kind=1),allocatable:: arr(:)
logical(kind=1),allocatable:: brr(:)
allocate(arr(10))
arr=(/.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false./)
call move_alloc(arr,brr)
if (.not.all(brr.eqv.(/.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false./))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test12()
logical(kind=2),allocatable:: arr(:)
logical(kind=2),allocatable:: brr(:)
allocate(arr(10))
arr=(/.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false./)
call move_alloc(arr,brr)
if (.not.all(brr.eqv.(/.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false./))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test13()
logical(kind=4),allocatable:: arr(:)
logical(kind=4),allocatable:: brr(:)
allocate(arr(10))
arr=(/.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false./)
call move_alloc(arr,brr)
if (.not.all(brr.eqv.(/.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false./))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine
subroutine test14()
logical(kind=8),allocatable:: arr(:)
logical(kind=8),allocatable:: brr(:)
allocate(arr(10))
arr=(/.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false./)
call move_alloc(arr,brr)
if (.not.all(brr.eqv.(/.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false.,.false./))) write(6,*) "NG"
if (allocated(arr)) write(6,*) "NG"
end subroutine





