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

  end module mod

  program main

    use mod,uv1=>mv1,uv2=>mv2,uv3=>mv3,uv4=>mv4,uv5=>mv5
    use mod,mv1=>mv1,mv2=>mv2,mv3=>mv3,mv4=>mv4,mv5=>mv5

    integer :: error = 0

    if (allocated(uv1%e1)) error = error+1
    if (allocated(uv1%e2)) error = error+1
    if (allocated(uv1%e3)) error = error+1
    if (allocated(uv1%e4)) error = error+1

    allocate (mv1%e1(1))
    allocate (mv1%e2(2:1,2:1))
    allocate (mv1%e3(5000,5000,5000))
    allocate (mv1%e4(10,10,10,10))

    if (.not.allocated(uv1%e1)) error = error+1
    if (.not.allocated(uv1%e2)) error = error+1
    if (.not.allocated(uv1%e3)) error = error+1
    if (.not.allocated(uv1%e4)) error = error+1

    deallocate (mv1%e1)
    deallocate (mv1%e2)
    deallocate (mv1%e3)
    deallocate (mv1%e4)

    if (allocated(uv1%e1)) error = error+1
    if (allocated(uv1%e2)) error = error+1
    if (allocated(uv1%e3)) error = error+1
    if (allocated(uv1%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (allocated(uv2(1,1)%e1)) error = error+1
    if (allocated(uv2(1,2)%e2)) error = error+1
    if (allocated(uv2(2,1)%e3)) error = error+1
    if (allocated(uv2(2,2)%e4)) error = error+1

    allocate (mv2(1,1)%e1(1))
    allocate (mv2(1,2)%e2(2:1,2:1))
    allocate (mv2(2,1)%e3(5000,5000,5000))
    allocate (mv2(2,2)%e4(10,10,10,10))

    if (.not.allocated(uv2(1,1)%e1)) error = error+1
    if (.not.allocated(uv2(1,2)%e2)) error = error+1
    if (.not.allocated(uv2(2,1)%e3)) error = error+1
    if (.not.allocated(uv2(2,2)%e4)) error = error+1

    if (allocated(uv2(2,2)%e1)) error = error+1
    if (allocated(uv2(2,1)%e2)) error = error+1
    if (allocated(uv2(1,2)%e3)) error = error+1
    if (allocated(uv2(1,1)%e4)) error = error+1

    allocate (mv2(2,2)%e1(1))
    allocate (mv2(2,1)%e2(2:1,2:1))
    allocate (mv2(1,2)%e3(5000,5000,5000))
    allocate (mv2(1,1)%e4(10,10,10,10))

    if (.not.allocated(uv2(2,2)%e1)) error = error+1
    if (.not.allocated(uv2(2,1)%e2)) error = error+1
    if (.not.allocated(uv2(1,2)%e3)) error = error+1
    if (.not.allocated(uv2(1,1)%e4)) error = error+1

    deallocate (mv2(1,1)%e1)
    deallocate (mv2(1,2)%e2)
    deallocate (mv2(2,1)%e3)
    deallocate (mv2(2,2)%e4)

    if (allocated(uv2(1,1)%e1)) error = error+1
    if (allocated(uv2(1,2)%e2)) error = error+1
    if (allocated(uv2(2,1)%e3)) error = error+1
    if (allocated(uv2(2,2)%e4)) error = error+1

    if (.not.allocated(uv2(2,2)%e1)) error = error+1
    if (.not.allocated(uv2(2,1)%e2)) error = error+1
    if (.not.allocated(uv2(1,2)%e3)) error = error+1
    if (.not.allocated(uv2(1,1)%e4)) error = error+1

    deallocate (mv2(2,2)%e1)
    deallocate (mv2(2,1)%e2)
    deallocate (mv2(1,2)%e3)
    deallocate (mv2(1,1)%e4)

    if (allocated(uv2(2,2)%e1)) error = error+1
    if (allocated(uv2(2,1)%e2)) error = error+1
    if (allocated(uv2(1,2)%e3)) error = error+1
    if (allocated(uv2(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    allocate(mv3(2,2))

    if (allocated(uv3(1,1)%e1)) error = error+1
    if (allocated(uv3(1,2)%e2)) error = error+1
    if (allocated(uv3(2,1)%e3)) error = error+1
    if (allocated(uv3(2,2)%e4)) error = error+1

    allocate (mv3(1,1)%e1(1))
    allocate (mv3(1,2)%e2(2:1,2:1))
    allocate (mv3(2,1)%e3(5000,5000,5000))
    allocate (mv3(2,2)%e4(10,10,10,10))

    if (.not.allocated(uv3(1,1)%e1)) error = error+1
    if (.not.allocated(uv3(1,2)%e2)) error = error+1
    if (.not.allocated(uv3(2,1)%e3)) error = error+1
    if (.not.allocated(uv3(2,2)%e4)) error = error+1

    if (allocated(uv3(2,2)%e1)) error = error+1
    if (allocated(uv3(2,1)%e2)) error = error+1
    if (allocated(uv3(1,2)%e3)) error = error+1
    if (allocated(uv3(1,1)%e4)) error = error+1

    allocate (mv3(2,2)%e1(1))
    allocate (mv3(2,1)%e2(2:1,2:1))
    allocate (mv3(1,2)%e3(5000,5000,5000))
    allocate (mv3(1,1)%e4(10,10,10,10))

    if (.not.allocated(uv3(2,2)%e1)) error = error+1
    if (.not.allocated(uv3(2,1)%e2)) error = error+1
    if (.not.allocated(uv3(1,2)%e3)) error = error+1
    if (.not.allocated(uv3(1,1)%e4)) error = error+1

    deallocate (mv3(1,1)%e1)
    deallocate (mv3(1,2)%e2)
    deallocate (mv3(2,1)%e3)
    deallocate (mv3(2,2)%e4)

    if (allocated(uv3(1,1)%e1)) error = error+1
    if (allocated(uv3(1,2)%e2)) error = error+1
    if (allocated(uv3(2,1)%e3)) error = error+1
    if (allocated(uv3(2,2)%e4)) error = error+1

    if (.not.allocated(uv3(2,2)%e1)) error = error+1
    if (.not.allocated(uv3(2,1)%e2)) error = error+1
    if (.not.allocated(uv3(1,2)%e3)) error = error+1
    if (.not.allocated(uv3(1,1)%e4)) error = error+1

    deallocate (mv3(2,2)%e1)
    deallocate (mv3(2,1)%e2)
    deallocate (mv3(1,2)%e3)
    deallocate (mv3(1,1)%e4)

    if (allocated(uv3(2,2)%e1)) error = error+1
    if (allocated(uv3(2,1)%e2)) error = error+1
    if (allocated(uv3(1,2)%e3)) error = error+1
    if (allocated(uv3(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate(mv3)

    allocate(mv4(2,2))

    if (allocated(uv4(1,1)%e1)) error = error+1
    if (allocated(uv4(1,2)%e2)) error = error+1
    if (allocated(uv4(2,1)%e3)) error = error+1
    if (allocated(uv4(2,2)%e4)) error = error+1

    allocate (mv4(1,1)%e1(1))
    allocate (mv4(1,2)%e2(2:1,2:1))
    allocate (mv4(2,1)%e3(5000,5000,5000))
    allocate (mv4(2,2)%e4(10,10,10,10))

    if (.not.allocated(uv4(1,1)%e1)) error = error+1
    if (.not.allocated(uv4(1,2)%e2)) error = error+1
    if (.not.allocated(uv4(2,1)%e3)) error = error+1
    if (.not.allocated(uv4(2,2)%e4)) error = error+1

    if (allocated(uv4(2,2)%e1)) error = error+1
    if (allocated(uv4(2,1)%e2)) error = error+1
    if (allocated(uv4(1,2)%e3)) error = error+1
    if (allocated(uv4(1,1)%e4)) error = error+1

    allocate (mv4(2,2)%e1(1))
    allocate (mv4(2,1)%e2(2:1,2:1))
    allocate (mv4(1,2)%e3(5000,5000,5000))
    allocate (mv4(1,1)%e4(10,10,10,10))

    if (.not.allocated(uv4(2,2)%e1)) error = error+1
    if (.not.allocated(uv4(2,1)%e2)) error = error+1
    if (.not.allocated(uv4(1,2)%e3)) error = error+1
    if (.not.allocated(uv4(1,1)%e4)) error = error+1

    deallocate (mv4(1,1)%e1)
    deallocate (mv4(1,2)%e2)
    deallocate (mv4(2,1)%e3)
    deallocate (mv4(2,2)%e4)

    if (allocated(uv4(1,1)%e1)) error = error+1
    if (allocated(uv4(1,2)%e2)) error = error+1
    if (allocated(uv4(2,1)%e3)) error = error+1
    if (allocated(uv4(2,2)%e4)) error = error+1

    if (.not.allocated(uv4(2,2)%e1)) error = error+1
    if (.not.allocated(uv4(2,1)%e2)) error = error+1
    if (.not.allocated(uv4(1,2)%e3)) error = error+1
    if (.not.allocated(uv4(1,1)%e4)) error = error+1

    deallocate (mv4(2,2)%e1)
    deallocate (mv4(2,1)%e2)
    deallocate (mv4(1,2)%e3)
    deallocate (mv4(1,1)%e4)

    if (allocated(uv4(2,2)%e1)) error = error+1
    if (allocated(uv4(2,1)%e2)) error = error+1
    if (allocated(uv4(1,2)%e3)) error = error+1
    if (allocated(uv4(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv4)

    allocate(mv5(2,2))

    if (allocated(uv5(1,1)%e1)) error = error+1
    if (allocated(uv5(1,2)%e2)) error = error+1
    if (allocated(uv5(2,1)%e3)) error = error+1
    if (allocated(uv5(2,2)%e4)) error = error+1

    allocate (mv5(1,1)%e1(1))
    allocate (mv5(1,2)%e2(2:1,2:1))
    allocate (mv5(2,1)%e3(5000,5000,5000))
    allocate (mv5(2,2)%e4(10,10,10,10))

    if (.not.allocated(uv5(1,1)%e1)) error = error+1
    if (.not.allocated(uv5(1,2)%e2)) error = error+1
    if (.not.allocated(uv5(2,1)%e3)) error = error+1
    if (.not.allocated(uv5(2,2)%e4)) error = error+1

    if (allocated(uv5(2,2)%e1)) error = error+1
    if (allocated(uv5(2,1)%e2)) error = error+1
    if (allocated(uv5(1,2)%e3)) error = error+1
    if (allocated(uv5(1,1)%e4)) error = error+1

    allocate (mv5(2,2)%e1(1))
    allocate (mv5(2,1)%e2(2:1,2:1))
    allocate (mv5(1,2)%e3(5000,5000,5000))
    allocate (mv5(1,1)%e4(10,10,10,10))

    if (.not.allocated(uv5(2,2)%e1)) error = error+1
    if (.not.allocated(uv5(2,1)%e2)) error = error+1
    if (.not.allocated(uv5(1,2)%e3)) error = error+1
    if (.not.allocated(uv5(1,1)%e4)) error = error+1

    deallocate (mv5(1,1)%e1)
    deallocate (mv5(1,2)%e2)
    deallocate (mv5(2,1)%e3)
    deallocate (mv5(2,2)%e4)

    if (allocated(uv5(1,1)%e1)) error = error+1
    if (allocated(uv5(1,2)%e2)) error = error+1
    if (allocated(uv5(2,1)%e3)) error = error+1
    if (allocated(uv5(2,2)%e4)) error = error+1

    if (.not.allocated(uv5(2,2)%e1)) error = error+1
    if (.not.allocated(uv5(2,1)%e2)) error = error+1
    if (.not.allocated(uv5(1,2)%e3)) error = error+1
    if (.not.allocated(uv5(1,1)%e4)) error = error+1

    deallocate (mv5(2,2)%e1)
    deallocate (mv5(2,1)%e2)
    deallocate (mv5(1,2)%e3)
    deallocate (mv5(1,1)%e4)

    if (allocated(uv5(2,2)%e1)) error = error+1
    if (allocated(uv5(2,1)%e2)) error = error+1
    if (allocated(uv5(1,2)%e3)) error = error+1
    if (allocated(uv5(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv5)

    mv4 => uv2

    if (allocated(uv4(1,1)%e1)) error = error+1
    if (allocated(uv4(1,2)%e2)) error = error+1
    if (allocated(uv4(2,1)%e3)) error = error+1
    if (allocated(uv4(2,2)%e4)) error = error+1

    allocate (mv2(1,1)%e1(1))
    allocate (mv2(1,2)%e2(2:1,2:1))
    allocate (mv2(2,1)%e3(5000,5000,5000))
    allocate (mv2(2,2)%e4(10,10,10,10))

    if (.not.allocated(uv4(1,1)%e1)) error = error+1
    if (.not.allocated(uv4(1,2)%e2)) error = error+1
    if (.not.allocated(uv4(2,1)%e3)) error = error+1
    if (.not.allocated(uv4(2,2)%e4)) error = error+1

    if (allocated(uv4(2,2)%e1)) error = error+1
    if (allocated(uv4(2,1)%e2)) error = error+1
    if (allocated(uv4(1,2)%e3)) error = error+1
    if (allocated(uv4(1,1)%e4)) error = error+1

    allocate (mv2(2,2)%e1(1))
    allocate (mv2(2,1)%e2(2:1,2:1))
    allocate (mv2(1,2)%e3(5000,5000,5000))
    allocate (mv2(1,1)%e4(10,10,10,10))

    if (.not.allocated(uv4(2,2)%e1)) error = error+1
    if (.not.allocated(uv4(2,1)%e2)) error = error+1
    if (.not.allocated(uv4(1,2)%e3)) error = error+1
    if (.not.allocated(uv4(1,1)%e4)) error = error+1

    deallocate (mv2(1,1)%e1)
    deallocate (mv2(1,2)%e2)
    deallocate (mv2(2,1)%e3)
    deallocate (mv2(2,2)%e4)

    if (allocated(uv4(1,1)%e1)) error = error+1
    if (allocated(uv4(1,2)%e2)) error = error+1
    if (allocated(uv4(2,1)%e3)) error = error+1
    if (allocated(uv4(2,2)%e4)) error = error+1

    if (.not.allocated(uv4(2,2)%e1)) error = error+1
    if (.not.allocated(uv4(2,1)%e2)) error = error+1
    if (.not.allocated(uv4(1,2)%e3)) error = error+1
    if (.not.allocated(uv4(1,1)%e4)) error = error+1

    deallocate (mv2(2,2)%e1)
    deallocate (mv2(2,1)%e2)
    deallocate (mv2(1,2)%e3)
    deallocate (mv2(1,1)%e4)

    if (allocated(uv4(2,2)%e1)) error = error+1
    if (allocated(uv4(2,1)%e2)) error = error+1
    if (allocated(uv4(1,2)%e3)) error = error+1
    if (allocated(uv4(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    allocate(mv5(2,2))
    mv4 => uv5

    if (allocated(uv4(1,1)%e1)) error = error+1
    if (allocated(uv4(1,2)%e2)) error = error+1
    if (allocated(uv4(2,1)%e3)) error = error+1
    if (allocated(uv4(2,2)%e4)) error = error+1

    allocate (mv5(1,1)%e1(1))
    allocate (mv5(1,2)%e2(2:1,2:1))
    allocate (mv5(2,1)%e3(5000,5000,5000))
    allocate (mv5(2,2)%e4(10,10,10,10))

    if (.not.allocated(uv4(1,1)%e1)) error = error+1
    if (.not.allocated(uv4(1,2)%e2)) error = error+1
    if (.not.allocated(uv4(2,1)%e3)) error = error+1
    if (.not.allocated(uv4(2,2)%e4)) error = error+1

    if (allocated(uv4(2,2)%e1)) error = error+1
    if (allocated(uv4(2,1)%e2)) error = error+1
    if (allocated(uv4(1,2)%e3)) error = error+1
    if (allocated(uv4(1,1)%e4)) error = error+1

    allocate (mv5(2,2)%e1(1))
    allocate (mv5(2,1)%e2(2:1,2:1))
    allocate (mv5(1,2)%e3(5000,5000,5000))
    allocate (mv5(1,1)%e4(10,10,10,10))

    if (.not.allocated(uv4(2,2)%e1)) error = error+1
    if (.not.allocated(uv4(2,1)%e2)) error = error+1
    if (.not.allocated(uv4(1,2)%e3)) error = error+1
    if (.not.allocated(uv4(1,1)%e4)) error = error+1

    deallocate (mv5(1,1)%e1)
    deallocate (mv5(1,2)%e2)
    deallocate (mv5(2,1)%e3)
    deallocate (mv5(2,2)%e4)

    if (allocated(uv4(1,1)%e1)) error = error+1
    if (allocated(uv4(1,2)%e2)) error = error+1
    if (allocated(uv4(2,1)%e3)) error = error+1
    if (allocated(uv4(2,2)%e4)) error = error+1

    if (.not.allocated(uv4(2,2)%e1)) error = error+1
    if (.not.allocated(uv4(2,1)%e2)) error = error+1
    if (.not.allocated(uv4(1,2)%e3)) error = error+1
    if (.not.allocated(uv4(1,1)%e4)) error = error+1

    deallocate (mv5(2,2)%e1)
    deallocate (mv5(2,1)%e2)
    deallocate (mv5(1,2)%e3)
    deallocate (mv5(1,1)%e4)

    if (allocated(uv4(2,2)%e1)) error = error+1
    if (allocated(uv4(2,1)%e2)) error = error+1
    if (allocated(uv4(1,2)%e3)) error = error+1
    if (allocated(uv4(1,1)%e4)) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate(mv5)

    print *," *** pass *** "

  end program main
