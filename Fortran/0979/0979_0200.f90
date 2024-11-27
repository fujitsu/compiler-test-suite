call test01()
call test02()
call test03()
print *,"pass"
end

subroutine test03()
type ty1
sequence
integer ,allocatable :: arr(:)
end type
type(ty1) ,pointer :: ipp
call sub(ipp)
if (.not.allocated(ipp%arr)) write(6,*) "NG"
if (ipp%arr(2).ne.2) write(6,*) "NG"
deallocate(ipp%arr)
deallocate(ipp)
allocate(ipp)
call sub2(ipp)
if (.not.allocated(ipp%arr)) write(6,*) "NG"
if (ipp%arr(2).ne.3) write(6,*) "NG"
contains
subroutine sub(ipp)
type ty1
sequence
integer ,allocatable :: arr(:)
end type
type(ty1),pointer :: ipp
integer ,allocatable :: brr(:)
intent(out) :: ipp
allocate(brr(20),ipp)
brr=(/(i,i=1,20)/)
call move_alloc(brr,ipp%arr)
end subroutine
subroutine sub2(ipp)
type ty1
sequence
integer ,allocatable :: arr(:)
end type
type(ty1) ,pointer:: ipp
integer ,allocatable :: brr(:)
intent(inout) :: ipp
allocate(brr(20))
brr=(/(i,i=1,20)/)+1
call move_alloc(brr,ipp%arr)
end subroutine
end subroutine


subroutine test01()
type ty1
sequence
integer ,allocatable :: arr(:)
end type
type(ty1) ,pointer :: ipp
allocate(ipp)
call sub(ipp)
if (.not.allocated(ipp%arr)) write(6,*) "NG"
if (ipp%arr(2).ne.2) write(6,*) "NG"
deallocate(ipp%arr)
call sub2(ipp)
if (.not.allocated(ipp%arr)) write(6,*) "NG"
if (ipp%arr(2).ne.3) write(6,*) "NG"
contains
subroutine sub(ipp)
type ty1
sequence
integer ,allocatable :: arr(:)
end type
type(ty1) :: ipp
integer ,allocatable :: brr(:)
intent(out) :: ipp
allocate(brr(20))
brr=(/(i,i=1,20)/)
call move_alloc(brr,ipp%arr)
end subroutine
subroutine sub2(ipp)
type ty1
sequence
integer ,allocatable :: arr(:)
end type
type(ty1) :: ipp
integer ,allocatable :: brr(:)
intent(inout) :: ipp
allocate(brr(20))
brr=(/(i,i=1,20)/)+1
call move_alloc(brr,ipp%arr)
end subroutine
end subroutine

subroutine test02()
type ty1
sequence
integer ,allocatable :: arr(:)
end type
type(ty1) :: ipp
call sub(ipp)
if (.not.allocated(ipp%arr)) write(6,*) "NG"
if (ipp%arr(2).ne.2) write(6,*) "NG"
deallocate(ipp%arr)
call sub2(ipp)
if (.not.allocated(ipp%arr)) write(6,*) "NG"
if (ipp%arr(2).ne.3) write(6,*) "NG"
contains
subroutine sub(ipp)
type ty1
sequence
integer ,allocatable :: arr(:)
end type
type(ty1) :: ipp
integer ,allocatable :: brr(:)
intent(out) :: ipp
allocate(brr(20))
brr=(/(i,i=1,20)/)
call move_alloc(brr,ipp%arr)
end subroutine
subroutine sub2(ipp)
type ty1
sequence
integer ,allocatable :: arr(:)
end type
type(ty1) :: ipp
integer ,allocatable :: brr(:)
intent(inout) :: ipp
allocate(brr(20))
brr=(/(i,i=1,20)/)+1
call move_alloc(brr,ipp%arr)
end subroutine
end subroutine
