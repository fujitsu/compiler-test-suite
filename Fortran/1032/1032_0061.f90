  module mod
    type t1
      integer,allocatable :: e1(:)
    end type t1
    type(t1),allocatable :: mv3(:,:)
  end module mod
  program main
    use mod,uv3=>mv3
    call insub()
    contains
    subroutine insub()
    use mod,mv3=>mv3
    integer :: error = 0
    allocate(mv3(2,2))
    if (allocated(uv3(1,1)%e1)) error = error+1
    allocate (mv3(1,1)%e1(1))
    if (.not.allocated(uv3(1,1)%e1)) error = error+1
    if (allocated(uv3(2,2)%e1)) error = error+1
    if (error .ne. 0) then
      print *," NG ",error
      error = 0
    end if
    deallocate(uv3)
    print *,"pass"
    end subroutine insub
  end program main
