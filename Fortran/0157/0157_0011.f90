subroutine s (xy, xz)
  integer, allocatable :: xy, xz
  call move_alloc(xy,xz)
end

interface
  subroutine s(xy,xz)
    integer, allocatable :: xy, xz
  end
end interface
integer, allocatable :: xy, xz
allocate(xy)
allocate(xz)
call s(xy,xz)
if (allocated(xy)) print *,301
if (.not.allocated(xz)) print *,302
print *,'pass'
end
