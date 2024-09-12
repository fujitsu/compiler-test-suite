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

    subroutine modsub(error,item)

    integer :: error
    integer :: item

    selectcase (item)

    case (1)
    if (allocated(mv1%e1)) error = error+1
    if (allocated(mv1%e2)) error = error+1
    if (allocated(mv1%e3)) error = error+1
    if (allocated(mv1%e4)) error = error+1

    case (2)
    if (.not.allocated(mv1%e1)) error = error+1
    if (.not.allocated(mv1%e2)) error = error+1
    if (.not.allocated(mv1%e3)) error = error+1
    if (.not.allocated(mv1%e4)) error = error+1

    case (3)
    if (allocated(mv1%e1)) error = error+1
    if (allocated(mv1%e2)) error = error+1
    if (allocated(mv1%e3)) error = error+1
    if (allocated(mv1%e4)) error = error+1

    case (4)
    if (allocated(mv2(1,1)%e1)) error = error+1
    if (allocated(mv2(1,2)%e2)) error = error+1
    if (allocated(mv2(2,1)%e3)) error = error+1
    if (allocated(mv2(2,2)%e4)) error = error+1

    case (5)
    if (.not.allocated(mv2(1,1)%e1)) error = error+1
    if (.not.allocated(mv2(1,2)%e2)) error = error+1
    if (.not.allocated(mv2(2,1)%e3)) error = error+1
    if (.not.allocated(mv2(2,2)%e4)) error = error+1

    if (allocated(mv2(2,2)%e1)) error = error+1
    if (allocated(mv2(2,1)%e2)) error = error+1
    if (allocated(mv2(1,2)%e3)) error = error+1
    if (allocated(mv2(1,1)%e4)) error = error+1

    case (6)
    if (.not.allocated(mv2(2,2)%e1)) error = error+1
    if (.not.allocated(mv2(2,1)%e2)) error = error+1
    if (.not.allocated(mv2(1,2)%e3)) error = error+1
    if (.not.allocated(mv2(1,1)%e4)) error = error+1

    case (7)
    if (allocated(mv2(1,1)%e1)) error = error+1
    if (allocated(mv2(1,2)%e2)) error = error+1
    if (allocated(mv2(2,1)%e3)) error = error+1
    if (allocated(mv2(2,2)%e4)) error = error+1

    if (.not.allocated(mv2(2,2)%e1)) error = error+1
    if (.not.allocated(mv2(2,1)%e2)) error = error+1
    if (.not.allocated(mv2(1,2)%e3)) error = error+1
    if (.not.allocated(mv2(1,1)%e4)) error = error+1

    case (8)
    if (allocated(mv2(2,2)%e1)) error = error+1
    if (allocated(mv2(2,1)%e2)) error = error+1
    if (allocated(mv2(1,2)%e3)) error = error+1
    if (allocated(mv2(1,1)%e4)) error = error+1

    case (9)
    if (allocated(mv3(1,1)%e1)) error = error+1
    if (allocated(mv3(1,2)%e2)) error = error+1
    if (allocated(mv3(2,1)%e3)) error = error+1
    if (allocated(mv3(2,2)%e4)) error = error+1

    case (10)
    if (.not.allocated(mv3(1,1)%e1)) error = error+1
    if (.not.allocated(mv3(1,2)%e2)) error = error+1
    if (.not.allocated(mv3(2,1)%e3)) error = error+1
    if (.not.allocated(mv3(2,2)%e4)) error = error+1

    if (allocated(mv3(2,2)%e1)) error = error+1
    if (allocated(mv3(2,1)%e2)) error = error+1
    if (allocated(mv3(1,2)%e3)) error = error+1
    if (allocated(mv3(1,1)%e4)) error = error+1

    case (11)
    if (.not.allocated(mv3(2,2)%e1)) error = error+1
    if (.not.allocated(mv3(2,1)%e2)) error = error+1
    if (.not.allocated(mv3(1,2)%e3)) error = error+1
    if (.not.allocated(mv3(1,1)%e4)) error = error+1

    case (12)
    if (allocated(mv3(1,1)%e1)) error = error+1
    if (allocated(mv3(1,2)%e2)) error = error+1
    if (allocated(mv3(2,1)%e3)) error = error+1
    if (allocated(mv3(2,2)%e4)) error = error+1

    if (.not.allocated(mv3(2,2)%e1)) error = error+1
    if (.not.allocated(mv3(2,1)%e2)) error = error+1
    if (.not.allocated(mv3(1,2)%e3)) error = error+1
    if (.not.allocated(mv3(1,1)%e4)) error = error+1

    case (13)
    if (allocated(mv3(2,2)%e1)) error = error+1
    if (allocated(mv3(2,1)%e2)) error = error+1
    if (allocated(mv3(1,2)%e3)) error = error+1
    if (allocated(mv3(1,1)%e4)) error = error+1

    case (14)
    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    case (15)
    if (.not.allocated(mv4(1,1)%e1)) error = error+1
    if (.not.allocated(mv4(1,2)%e2)) error = error+1
    if (.not.allocated(mv4(2,1)%e3)) error = error+1
    if (.not.allocated(mv4(2,2)%e4)) error = error+1

    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    case (16)
    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    case (17)
    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    case (18)
    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    case (19)
    if (allocated(mv5(1,1)%e1)) error = error+1
    if (allocated(mv5(1,2)%e2)) error = error+1
    if (allocated(mv5(2,1)%e3)) error = error+1
    if (allocated(mv5(2,2)%e4)) error = error+1

    case (20)
    if (.not.allocated(mv5(1,1)%e1)) error = error+1
    if (.not.allocated(mv5(1,2)%e2)) error = error+1
    if (.not.allocated(mv5(2,1)%e3)) error = error+1
    if (.not.allocated(mv5(2,2)%e4)) error = error+1

    if (allocated(mv5(2,2)%e1)) error = error+1
    if (allocated(mv5(2,1)%e2)) error = error+1
    if (allocated(mv5(1,2)%e3)) error = error+1
    if (allocated(mv5(1,1)%e4)) error = error+1

    case (21)
    if (.not.allocated(mv5(2,2)%e1)) error = error+1
    if (.not.allocated(mv5(2,1)%e2)) error = error+1
    if (.not.allocated(mv5(1,2)%e3)) error = error+1
    if (.not.allocated(mv5(1,1)%e4)) error = error+1

    case (22)
    if (allocated(mv5(1,1)%e1)) error = error+1
    if (allocated(mv5(1,2)%e2)) error = error+1
    if (allocated(mv5(2,1)%e3)) error = error+1
    if (allocated(mv5(2,2)%e4)) error = error+1

    if (.not.allocated(mv5(2,2)%e1)) error = error+1
    if (.not.allocated(mv5(2,1)%e2)) error = error+1
    if (.not.allocated(mv5(1,2)%e3)) error = error+1
    if (.not.allocated(mv5(1,1)%e4)) error = error+1

    case (23)
    if (allocated(mv5(2,2)%e1)) error = error+1
    if (allocated(mv5(2,1)%e2)) error = error+1
    if (allocated(mv5(1,2)%e3)) error = error+1
    if (allocated(mv5(1,1)%e4)) error = error+1

    case (24)
    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    case (25)
    if (.not.allocated(mv4(1,1)%e1)) error = error+1
    if (.not.allocated(mv4(1,2)%e2)) error = error+1
    if (.not.allocated(mv4(2,1)%e3)) error = error+1
    if (.not.allocated(mv4(2,2)%e4)) error = error+1

    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    case (26)
    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    case (27)
    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    case (28)
    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    case (29)
    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    case (30)
    if (.not.allocated(mv4(1,1)%e1)) error = error+1
    if (.not.allocated(mv4(1,2)%e2)) error = error+1
    if (.not.allocated(mv4(2,1)%e3)) error = error+1
    if (.not.allocated(mv4(2,2)%e4)) error = error+1

    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    case (31)
    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    case (32)
    if (allocated(mv4(1,1)%e1)) error = error+1
    if (allocated(mv4(1,2)%e2)) error = error+1
    if (allocated(mv4(2,1)%e3)) error = error+1
    if (allocated(mv4(2,2)%e4)) error = error+1

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    case (33)
    if (allocated(mv4(2,2)%e1)) error = error+1
    if (allocated(mv4(2,1)%e2)) error = error+1
    if (allocated(mv4(1,2)%e3)) error = error+1
    if (allocated(mv4(1,1)%e4)) error = error+1

    end select

    end subroutine modsub

  end module mod

  program main

    use mod

    integer :: error = 0

    call modsub(error,1)

    allocate (mv1%e1(1))
    allocate (mv1%e2(2:1,2:1))
    allocate (mv1%e3(5000,5000,5000))
    allocate (mv1%e4(10,10,10,10))

    call modsub(error,2)

    deallocate (mv1%e1)
    deallocate (mv1%e2)
    deallocate (mv1%e3)
    deallocate (mv1%e4)

    call modsub(error,3)

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    call modsub(error,4)

    allocate (mv2(1,1)%e1(1))
    allocate (mv2(1,2)%e2(2:1,2:1))
    allocate (mv2(2,1)%e3(5000,5000,5000))
    allocate (mv2(2,2)%e4(10,10,10,10))

    call modsub(error,5)

    allocate (mv2(2,2)%e1(1))
    allocate (mv2(2,1)%e2(2:1,2:1))
    allocate (mv2(1,2)%e3(5000,5000,5000))
    allocate (mv2(1,1)%e4(10,10,10,10))

    call modsub(error,6)

    deallocate (mv2(1,1)%e1)
    deallocate (mv2(1,2)%e2)
    deallocate (mv2(2,1)%e3)
    deallocate (mv2(2,2)%e4)

    call modsub(error,7)

    deallocate (mv2(2,2)%e1)
    deallocate (mv2(2,1)%e2)
    deallocate (mv2(1,2)%e3)
    deallocate (mv2(1,1)%e4)

    call modsub(error,8)

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    allocate(mv3(2,2))

    call modsub(error,9)

    allocate (mv3(1,1)%e1(1))
    allocate (mv3(1,2)%e2(2:1,2:1))
    allocate (mv3(2,1)%e3(5000,5000,5000))
    allocate (mv3(2,2)%e4(10,10,10,10))

    call modsub(error,10)

    allocate (mv3(2,2)%e1(1))
    allocate (mv3(2,1)%e2(2:1,2:1))
    allocate (mv3(1,2)%e3(5000,5000,5000))
    allocate (mv3(1,1)%e4(10,10,10,10))

    call modsub(error,11)

    deallocate (mv3(1,1)%e1)
    deallocate (mv3(1,2)%e2)
    deallocate (mv3(2,1)%e3)
    deallocate (mv3(2,2)%e4)

    call modsub(error,12)

    deallocate (mv3(2,2)%e1)
    deallocate (mv3(2,1)%e2)
    deallocate (mv3(1,2)%e3)
    deallocate (mv3(1,1)%e4)

    call modsub(error,13)

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate(mv3)

    allocate(mv4(2,2))

    call modsub(error,14)

    allocate (mv4(1,1)%e1(1))
    allocate (mv4(1,2)%e2(2:1,2:1))
    allocate (mv4(2,1)%e3(5000,5000,5000))
    allocate (mv4(2,2)%e4(10,10,10,10))

    call modsub(error,15)

    allocate (mv4(2,2)%e1(1))
    allocate (mv4(2,1)%e2(2:1,2:1))
    allocate (mv4(1,2)%e3(5000,5000,5000))
    allocate (mv4(1,1)%e4(10,10,10,10))

    call modsub(error,16)

    deallocate (mv4(1,1)%e1)
    deallocate (mv4(1,2)%e2)
    deallocate (mv4(2,1)%e3)
    deallocate (mv4(2,2)%e4)

    call modsub(error,17)

    deallocate (mv4(2,2)%e1)
    deallocate (mv4(2,1)%e2)
    deallocate (mv4(1,2)%e3)
    deallocate (mv4(1,1)%e4)

    call modsub(error,18)

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv4)

    allocate(mv5(2,2))

    call modsub(error,19)

    allocate (mv5(1,1)%e1(1))
    allocate (mv5(1,2)%e2(2:1,2:1))
    allocate (mv5(2,1)%e3(5000,5000,5000))
    allocate (mv5(2,2)%e4(10,10,10,10))

    call modsub(error,20)

    allocate (mv5(2,2)%e1(1))
    allocate (mv5(2,1)%e2(2:1,2:1))
    allocate (mv5(1,2)%e3(5000,5000,5000))
    allocate (mv5(1,1)%e4(10,10,10,10))

    call modsub(error,21)

    deallocate (mv5(1,1)%e1)
    deallocate (mv5(1,2)%e2)
    deallocate (mv5(2,1)%e3)
    deallocate (mv5(2,2)%e4)

    call modsub(error,22)

    deallocate (mv5(2,2)%e1)
    deallocate (mv5(2,1)%e2)
    deallocate (mv5(1,2)%e3)
    deallocate (mv5(1,1)%e4)

    call modsub(error,23)

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv5)

    mv4 => mv2

    call modsub(error,24)

    allocate (mv2(1,1)%e1(1))
    allocate (mv2(1,2)%e2(2:1,2:1))
    allocate (mv2(2,1)%e3(5000,5000,5000))
    allocate (mv2(2,2)%e4(10,10,10,10))

    call modsub(error,25)

    allocate (mv2(2,2)%e1(1))
    allocate (mv2(2,1)%e2(2:1,2:1))
    allocate (mv2(1,2)%e3(5000,5000,5000))
    allocate (mv2(1,1)%e4(10,10,10,10))

    call modsub(error,26)

    deallocate (mv2(1,1)%e1)
    deallocate (mv2(1,2)%e2)
    deallocate (mv2(2,1)%e3)
    deallocate (mv2(2,2)%e4)

    call modsub(error,27)

    deallocate (mv2(2,2)%e1)
    deallocate (mv2(2,1)%e2)
    deallocate (mv2(1,2)%e3)
    deallocate (mv2(1,1)%e4)

    call modsub(error,28)

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    allocate(mv5(2,2))
    mv4 => mv5

    call modsub(error,29)

    allocate (mv5(1,1)%e1(1))
    allocate (mv5(1,2)%e2(2:1,2:1))
    allocate (mv5(2,1)%e3(5000,5000,5000))
    allocate (mv5(2,2)%e4(10,10,10,10))

    call modsub(error,30)

    allocate (mv5(2,2)%e1(1))
    allocate (mv5(2,1)%e2(2:1,2:1))
    allocate (mv5(1,2)%e3(5000,5000,5000))
    allocate (mv5(1,1)%e4(10,10,10,10))

    call modsub(error,31)

    deallocate (mv5(1,1)%e1)
    deallocate (mv5(1,2)%e2)
    deallocate (mv5(2,1)%e3)
    deallocate (mv5(2,2)%e4)

    call modsub(error,32)

    deallocate (mv5(2,2)%e1)
    deallocate (mv5(2,1)%e2)
    deallocate (mv5(1,2)%e3)
    deallocate (mv5(1,1)%e4)

    call modsub(error,33)

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate(mv5)

    print *," *** pass *** "

  end program main
