call test01()
call test02()
print *,"pass"
end

module mod
contains
subroutine mod_sub()
integer ,allocatable :: arr(:)
call sub(arr)
if (.not.allocated(arr)) write(6,*) "NG"
if (arr(2).ne.2) write(6,*) "NG"
deallocate(arr)
call esub(arr)
if (.not.allocated(arr)) write(6,*) "NG"
if (arr(2).ne.2) write(6,*) "NG"
deallocate(arr)
call sub2(arr)
if (.not.allocated(arr)) write(6,*) "NG"
if (arr(2).ne.3) write(6,*) "NG"
deallocate(arr)
call esub2(arr)
if (.not.allocated(arr)) write(6,*) "NG"
if (arr(2).ne.3) write(6,*) "NG"
deallocate(arr)
end subroutine
subroutine sub(arr)
integer ,allocatable :: arr(:),brr(:)
intent(out) :: arr
allocate(brr(20))
brr=(/(i,i=1,20)/)
call move_alloc(brr,arr)
end subroutine
subroutine sub2(arr)
integer ,allocatable :: arr(:),brr(:)
intent(inout) :: arr
allocate(brr(30))
brr=(/(i,i=1,30)/)+1
call move_alloc(brr,arr)
end subroutine
subroutine asub(arr)
integer ,allocatable :: arr(:),brr(:)
intent(out) :: arr
entry esub(arr)
allocate(brr(20))
brr=(/(i,i=1,20)/)
call move_alloc(brr,arr)
end subroutine
subroutine asub2(arr)
integer ,allocatable :: arr(:),brr(:)
intent(inout) :: arr
entry esub2(arr)
allocate(brr(30))
brr=(/(i,i=1,30)/)+1
call move_alloc(brr,arr)
end subroutine
end

subroutine test02()
use mod
call mod_sub()
end
subroutine test01()
integer ,allocatable :: arr(:)
call sub(arr)
if (.not.allocated(arr)) write(6,*) "NG"
if (arr(2).ne.2) write(6,*) "NG"
deallocate(arr)
call sub2(arr)
if (.not.allocated(arr)) write(6,*) "NG"
if (arr(2).ne.3) write(6,*) "NG"
contains
subroutine sub(arr)
integer ,allocatable :: arr(:),brr(:)
intent(out) :: arr
allocate(brr(20))
brr=(/(i,i=1,20)/)
call move_alloc(brr,arr)
end subroutine
subroutine sub2(arr)
integer ,allocatable :: arr(:),brr(:)
intent(inout) :: arr
allocate(brr(30))
brr=(/(i,i=1,30)/)+1
call move_alloc(brr,arr)
end subroutine
end subroutine
