call s0()
print *,'pass'
end
subroutine s0
integer,allocatable::x1(:)
type y
integer,allocatable::x1(:)
end type
type(y)::yy
if (allocated(x1))print *,'error'
if (allocated(yy%x1))print *,'error'
allocate(x1(2))
if (.not.allocated(x1))print *,'error'
deallocate(x1)
if (allocated(x1))print *,'error'
allocate(yy%x1(2))
if (.not.allocated(yy%x1))print *,'error'
deallocate(yy%x1)
if (allocated(yy%x1))print *,'error'
end
