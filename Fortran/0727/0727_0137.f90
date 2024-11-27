program reall
  real, pointer, dimension(:) :: p
  integer :: nels = 2, j
  allocate(p(1:nels))
  p(1) = 1
  p(2) = 2

  do j = 1,10
    nels = nels * 2
    p => reallocate(p, nels)
    write(1,*)'allocated ', nels
  end do
  print   *,'pass'

contains

  function reallocate(p, n)
    real, pointer, dimension(:) :: p, reallocate
    integer, intent(in) :: n
    integer :: nold, ierr
    allocate(reallocate(1:n), stat=ierr)
    if(ierr /= 0) then
       write(1,*)'error', ierr, ' trying to allocate', n
       stop
    end if
    write(1,*)'allocated ', n, ' ok'
    if(.not. associated(p)) return
    nold = min(size(p),n)
    reallocate = 0
    reallocate(1:nold) = p(1:nold)
    deallocate(p, stat=ierr)
    if(ierr /= 0) then
       write(1,*)'error', ierr, ' trying to deallocate', nold
       stop
    end if
    write(1,*)'deallocated ', nold, ' ok'
  end function reallocate

end program reall
