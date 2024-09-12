  module mod

    type t1
      integer,allocatable :: e1(:)
      complex,allocatable :: e2(:,:)
      character(0),allocatable :: e3(:,:,:)
      character(2),allocatable :: e4(:,:,:,:)
    end type t1

    type(t1) :: mv1
    type(t1),target      :: mv2(2,2)
    type(t1),allocatable :: mv3(:,:)
    type(t1),pointer     :: mv4(:,:)
    type(t1),allocatable,target :: mv5(:,:)

    contains 

    subroutine modsub()

    integer :: error = 0

    if (allocated(mv1%e1)) error = error+1
    if (allocated(mv1%e2)) error = error+1
    if (allocated(mv1%e3)) error = error+1
    if (allocated(mv1%e4)) error = error+1

    allocate (mv1%e1(1))
    allocate (mv1%e2(2:1,2:1))
    allocate (mv1%e3(5000,5000,5000))
    allocate (mv1%e4(10,10,10,10))

    if (.not.allocated(mv1%e1)) error = error+1
    if (.not.allocated(mv1%e2)) error = error+1
    if (.not.allocated(mv1%e3)) error = error+1
    if (.not.allocated(mv1%e4)) error = error+1

    deallocate (mv1%e1)
    deallocate (mv1%e2)
    deallocate (mv1%e3)
    deallocate (mv1%e4)

    if (allocated(mv1%e1)) error = error+1
    if (allocated(mv1%e2)) error = error+1
    if (allocated(mv1%e3)) error = error+1
    if (allocated(mv1%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (allocated(mv2(1,1)%e1)) error = error+1
    if (allocated(mv2(1,2)%e2)) error = error+1
    if (allocated(mv2(2,1)%e3)) error = error+1
    if (allocated(mv2(2,2)%e4)) error = error+1

    allocate (mv2(1,1)%e1(1))
    allocate (mv2(1,2)%e2(2:1,2:1))
    allocate (mv2(2,1)%e3(5000,5000,5000))
    allocate (mv2(2,2)%e4(10,10,10,10))

    if (.not.allocated(mv2(1,1)%e1)) error = error+1
    if (.not.allocated(mv2(1,2)%e2)) error = error+1
    if (.not.allocated(mv2(2,1)%e3)) error = error+1
    if (.not.allocated(mv2(2,2)%e4)) error = error+1

    if (allocated(mv2(2,2)%e1)) error = error+1
    if (allocated(mv2(2,1)%e2)) error = error+1
    if (allocated(mv2(1,2)%e3)) error = error+1
    if (allocated(mv2(1,1)%e4)) error = error+1

    allocate (mv2(2,2)%e1(1))
    allocate (mv2(2,1)%e2(2:1,2:1))
    allocate (mv2(1,2)%e3(5000,5000,5000))
    allocate (mv2(1,1)%e4(10,10,10,10))

    if (.not.allocated(mv2(2,2)%e1)) error = error+1
    if (.not.allocated(mv2(2,1)%e2)) error = error+1
    if (.not.allocated(mv2(1,2)%e3)) error = error+1
    if (.not.allocated(mv2(1,1)%e4)) error = error+1

    deallocate (mv2(1,1)%e1)
    deallocate (mv2(1,2)%e2)
    deallocate (mv2(2,1)%e3)
    deallocate (mv2(2,2)%e4)

    if (allocated(mv2(1,1)%e1)) error = error+1
    if (allocated(mv2(1,2)%e2)) error = error+1
    if (allocated(mv2(2,1)%e3)) error = error+1
    if (allocated(mv2(2,2)%e4)) error = error+1

    if (.not.allocated(mv2(2,2)%e1)) error = error+1
    if (.not.allocated(mv2(2,1)%e2)) error = error+1
    if (.not.allocated(mv2(1,2)%e3)) error = error+1
    if (.not.allocated(mv2(1,1)%e4)) error = error+1

    deallocate (mv2(2,2)%e1)
    deallocate (mv2(2,1)%e2)
    deallocate (mv2(1,2)%e3)
    deallocate (mv2(1,1)%e4)

    if (allocated(mv2(2,2)%e1)) error = error+1
    if (allocated(mv2(2,1)%e2)) error = error+1
    if (allocated(mv2(1,2)%e3)) error = error+1
    if (allocated(mv2(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    allocate(mv3(2,2))

    if (allocated(mv3(1,1)%e1)) error = error+1
    if (allocated(mv3(1,2)%e2)) error = error+1
    if (allocated(mv3(2,1)%e3)) error = error+1
    if (allocated(mv3(2,2)%e4)) error = error+1

    allocate (mv3(1,1)%e1(1))
    allocate (mv3(1,2)%e2(2:1,2:1))
    allocate (mv3(2,1)%e3(5000,5000,5000))
    allocate (mv3(2,2)%e4(10,10,10,10))

    if (.not.allocated(mv3(1,1)%e1)) error = error+1
    if (.not.allocated(mv3(1,2)%e2)) error = error+1
    if (.not.allocated(mv3(2,1)%e3)) error = error+1
    if (.not.allocated(mv3(2,2)%e4)) error = error+1

    if (allocated(mv3(2,2)%e1)) error = error+1
    if (allocated(mv3(2,1)%e2)) error = error+1
    if (allocated(mv3(1,2)%e3)) error = error+1
    if (allocated(mv3(1,1)%e4)) error = error+1

    allocate (mv3(2,2)%e1(1))
    allocate (mv3(2,1)%e2(2:1,2:1))
    allocate (mv3(1,2)%e3(5000,5000,5000))
    allocate (mv3(1,1)%e4(10,10,10,10))

    if (.not.allocated(mv3(2,2)%e1)) error = error+1
    if (.not.allocated(mv3(2,1)%e2)) error = error+1
    if (.not.allocated(mv3(1,2)%e3)) error = error+1
    if (.not.allocated(mv3(1,1)%e4)) error = error+1

    deallocate (mv3(1,1)%e1)
    deallocate (mv3(1,2)%e2)
    deallocate (mv3(2,1)%e3)
    deallocate (mv3(2,2)%e4)

    if (allocated(mv3(1,1)%e1)) error = error+1
    if (allocated(mv3(1,2)%e2)) error = error+1
    if (allocated(mv3(2,1)%e3)) error = error+1
    if (allocated(mv3(2,2)%e4)) error = error+1

    if (.not.allocated(mv3(2,2)%e1)) error = error+1
    if (.not.allocated(mv3(2,1)%e2)) error = error+1
    if (.not.allocated(mv3(1,2)%e3)) error = error+1
    if (.not.allocated(mv3(1,1)%e4)) error = error+1

    deallocate (mv3(2,2)%e1)
    deallocate (mv3(2,1)%e2)
    deallocate (mv3(1,2)%e3)
    deallocate (mv3(1,1)%e4)

    if (allocated(mv3(2,2)%e1)) error = error+1
    if (allocated(mv3(2,1)%e2)) error = error+1
    if (allocated(mv3(1,2)%e3)) error = error+1
    if (allocated(mv3(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate(mv3)

    allocate(mv4(2,2))

    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    allocate (mv4(1,1)%e1(1))
    allocate (mv4(1,2)%e2(2:1,2:1))
    allocate (mv4(2,1)%e3(5000,5000,5000))
    allocate (mv4(2,2)%e4(10,10,10,10))

    if (.not.allocated(mv4(1,1)%e1)) error = error+1
    if (.not.allocated(mv4(1,2)%e2)) error = error+1
    if (.not.allocated(mv4(2,1)%e3)) error = error+1
    if (.not.allocated(mv4(2,2)%e4)) error = error+1

    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    allocate (mv4(2,2)%e1(1))
    allocate (mv4(2,1)%e2(2:1,2:1))
    allocate (mv4(1,2)%e3(5000,5000,5000))
    allocate (mv4(1,1)%e4(10,10,10,10))

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    deallocate (mv4(1,1)%e1)
    deallocate (mv4(1,2)%e2)
    deallocate (mv4(2,1)%e3)
    deallocate (mv4(2,2)%e4)

    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    deallocate (mv4(2,2)%e1)
    deallocate (mv4(2,1)%e2)
    deallocate (mv4(1,2)%e3)
    deallocate (mv4(1,1)%e4)

    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv4)

    allocate(mv5(2,2))

    if (allocated(mv5(1,1)%e1)) error = error+1
    if (allocated(mv5(1,2)%e2)) error = error+1
    if (allocated(mv5(2,1)%e3)) error = error+1
    if (allocated(mv5(2,2)%e4)) error = error+1

    allocate (mv5(1,1)%e1(1))
    allocate (mv5(1,2)%e2(2:1,2:1))
    allocate (mv5(2,1)%e3(5000,5000,5000))
    allocate (mv5(2,2)%e4(10,10,10,10))

    if (.not.allocated(mv5(1,1)%e1)) error = error+1
    if (.not.allocated(mv5(1,2)%e2)) error = error+1
    if (.not.allocated(mv5(2,1)%e3)) error = error+1
    if (.not.allocated(mv5(2,2)%e4)) error = error+1

    if (allocated(mv5(2,2)%e1)) error = error+1
    if (allocated(mv5(2,1)%e2)) error = error+1
    if (allocated(mv5(1,2)%e3)) error = error+1
    if (allocated(mv5(1,1)%e4)) error = error+1

    allocate (mv5(2,2)%e1(1))
    allocate (mv5(2,1)%e2(2:1,2:1))
    allocate (mv5(1,2)%e3(5000,5000,5000))
    allocate (mv5(1,1)%e4(10,10,10,10))

    if (.not.allocated(mv5(2,2)%e1)) error = error+1
    if (.not.allocated(mv5(2,1)%e2)) error = error+1
    if (.not.allocated(mv5(1,2)%e3)) error = error+1
    if (.not.allocated(mv5(1,1)%e4)) error = error+1

    deallocate (mv5(1,1)%e1)
    deallocate (mv5(1,2)%e2)
    deallocate (mv5(2,1)%e3)
    deallocate (mv5(2,2)%e4)

    if (allocated(mv5(1,1)%e1)) error = error+1
    if (allocated(mv5(1,2)%e2)) error = error+1
    if (allocated(mv5(2,1)%e3)) error = error+1
    if (allocated(mv5(2,2)%e4)) error = error+1

    if (.not.allocated(mv5(2,2)%e1)) error = error+1
    if (.not.allocated(mv5(2,1)%e2)) error = error+1
    if (.not.allocated(mv5(1,2)%e3)) error = error+1
    if (.not.allocated(mv5(1,1)%e4)) error = error+1

    deallocate (mv5(2,2)%e1)
    deallocate (mv5(2,1)%e2)
    deallocate (mv5(1,2)%e3)
    deallocate (mv5(1,1)%e4)

    if (allocated(mv5(2,2)%e1)) error = error+1
    if (allocated(mv5(2,1)%e2)) error = error+1
    if (allocated(mv5(1,2)%e3)) error = error+1
    if (allocated(mv5(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv5)

    mv4 => mv2

    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    allocate (mv2(1,1)%e1(1))
    allocate (mv2(1,2)%e2(2:1,2:1))
    allocate (mv2(2,1)%e3(5000,5000,5000))
    allocate (mv2(2,2)%e4(10,10,10,10))

    if (.not.allocated(mv4(1,1)%e1)) error = error+1
    if (.not.allocated(mv4(1,2)%e2)) error = error+1
    if (.not.allocated(mv4(2,1)%e3)) error = error+1
    if (.not.allocated(mv4(2,2)%e4)) error = error+1

    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    allocate (mv2(2,2)%e1(1))
    allocate (mv2(2,1)%e2(2:1,2:1))
    allocate (mv2(1,2)%e3(5000,5000,5000))
    allocate (mv2(1,1)%e4(10,10,10,10))

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    deallocate (mv2(1,1)%e1)
    deallocate (mv2(1,2)%e2)
    deallocate (mv2(2,1)%e3)
    deallocate (mv2(2,2)%e4)

    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    deallocate (mv2(2,2)%e1)
    deallocate (mv2(2,1)%e2)
    deallocate (mv2(1,2)%e3)
    deallocate (mv2(1,1)%e4)

    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    allocate(mv5(2,2))
    mv4 => mv5

    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    allocate (mv5(1,1)%e1(1))
    allocate (mv5(1,2)%e2(2:1,2:1))
    allocate (mv5(2,1)%e3(5000,5000,5000))
    allocate (mv5(2,2)%e4(10,10,10,10))

    if (.not.allocated(mv4(1,1)%e1)) error = error+1
    if (.not.allocated(mv4(1,2)%e2)) error = error+1
    if (.not.allocated(mv4(2,1)%e3)) error = error+1
    if (.not.allocated(mv4(2,2)%e4)) error = error+1

    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    allocate (mv5(2,2)%e1(1))
    allocate (mv5(2,1)%e2(2:1,2:1))
    allocate (mv5(1,2)%e3(5000,5000,5000))
    allocate (mv5(1,1)%e4(10,10,10,10))

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    deallocate (mv5(1,1)%e1)
    deallocate (mv5(1,2)%e2)
    deallocate (mv5(2,1)%e3)
    deallocate (mv5(2,2)%e4)

    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    deallocate (mv5(2,2)%e1)
    deallocate (mv5(2,1)%e2)
    deallocate (mv5(1,2)%e3)
    deallocate (mv5(1,1)%e4)

    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate(mv5)

    print *," *** pass *** "

    end subroutine modsub

  end module mod

  program main

    use mod,only:modsub

    call modsub()

  end program main