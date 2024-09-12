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

    use mod

    integer :: error = 0
    integer,allocatable :: l1(:)
    complex,allocatable :: l2(:,:)
    character(0),allocatable :: l3(:,:,:)
    character(2),allocatable :: l4(:,:,:,:)

    allocate(l1(1:1))
    allocate(l2(1:1,2:2))
    allocate(l3(1:1,2:2,3:3))
    allocate(l4(1:1,2:2,3:3,4:4))

    l1 = 1
    l2 = (1.,1.)
    l3 = "aaa"
    l4 = "ZZ"

    mv1 = t1(l1,l2,l3,l4)

    if (.not.allocated(mv1%e1)) error = error+1
    if (.not.allocated(mv1%e2)) error = error+1
    if (.not.allocated(mv1%e3)) error = error+1
    if (.not.allocated(mv1%e4)) error = error+1

    if (lbound(mv1%e1,1).ne.1) error = error+1
    if (lbound(mv1%e2,2).ne.2) error = error+1
    if (lbound(mv1%e3,3).ne.3) error = error+1
    if (lbound(mv1%e4,4).ne.4) error = error+1

    if (ubound(mv1%e1,1).ne.1) error = error+1
    if (ubound(mv1%e2,2).ne.2) error = error+1
    if (ubound(mv1%e3,3).ne.3) error = error+1
    if (ubound(mv1%e4,4).ne.4) error = error+1

    if (any(mv1%e1 .ne.1))       error = error+1
    if (any(mv1%e2 .ne.(1.,1.))) error = error+1
    if (any(mv1%e3 .ne.""))      error = error+1
    if (any(mv1%e4 .ne."ZZ"))    error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    mv2 = t1(l1,l2,l3,l4)

    if (.not.allocated(mv2(1,1)%e1)) error = error+1
    if (.not.allocated(mv2(1,2)%e2)) error = error+1
    if (.not.allocated(mv2(2,1)%e3)) error = error+1
    if (.not.allocated(mv2(2,2)%e4)) error = error+1

    if (.not.allocated(mv2(2,2)%e1)) error = error+1
    if (.not.allocated(mv2(2,1)%e2)) error = error+1
    if (.not.allocated(mv2(1,2)%e3)) error = error+1
    if (.not.allocated(mv2(1,1)%e4)) error = error+1

    if (lbound(mv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv2(1,2)%e2,2).ne.2) error = error+1
    if (lbound(mv2(2,1)%e3,3).ne.3) error = error+1
    if (lbound(mv2(2,2)%e4,4).ne.4) error = error+1

    if (ubound(mv2(2,2)%e1,1).ne.1) error = error+1
    if (ubound(mv2(2,1)%e2,2).ne.2) error = error+1
    if (ubound(mv2(1,2)%e3,3).ne.3) error = error+1
    if (ubound(mv2(1,1)%e4,4).ne.4) error = error+1

    if (any(mv2(1,2)%e1 .ne.1))       error = error+1
    if (any(mv2(1,1)%e2 .ne.(1.,1.))) error = error+1
    if (any(mv2(2,2)%e3 .ne.""))      error = error+1
    if (any(mv2(2,1)%e4 .ne."ZZ"))    error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    allocate(mv3(2,2))

    mv3 = t1(l1,l2,l3,l4)

    if (.not.allocated(mv3(1,1)%e1)) error = error+1
    if (.not.allocated(mv3(1,2)%e2)) error = error+1
    if (.not.allocated(mv3(2,1)%e3)) error = error+1
    if (.not.allocated(mv3(2,2)%e4)) error = error+1

    if (.not.allocated(mv3(2,2)%e1)) error = error+1
    if (.not.allocated(mv3(2,1)%e2)) error = error+1
    if (.not.allocated(mv3(1,2)%e3)) error = error+1
    if (.not.allocated(mv3(1,1)%e4)) error = error+1

    if (lbound(mv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv3(1,2)%e2,2).ne.2) error = error+1
    if (lbound(mv3(2,1)%e3,3).ne.3) error = error+1
    if (lbound(mv3(2,2)%e4,4).ne.4) error = error+1

    if (ubound(mv3(2,2)%e1,1).ne.1) error = error+1
    if (ubound(mv3(2,1)%e2,2).ne.2) error = error+1
    if (ubound(mv3(1,2)%e3,3).ne.3) error = error+1
    if (ubound(mv3(1,1)%e4,4).ne.4) error = error+1

    if (any(mv3(1,2)%e1 .ne.1))       error = error+1
    if (any(mv3(1,1)%e2 .ne.(1.,1.))) error = error+1
    if (any(mv3(2,2)%e3 .ne.""))      error = error+1
    if (any(mv3(2,1)%e4 .ne."ZZ"))    error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate(mv3)

    allocate(mv4(2,2))

    mv4 = t1(l1,l2,l3,l4)

    if (.not.allocated(mv4(1,1)%e1)) error = error+1
    if (.not.allocated(mv4(1,2)%e2)) error = error+1
    if (.not.allocated(mv4(2,1)%e3)) error = error+1
    if (.not.allocated(mv4(2,2)%e4)) error = error+1

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    if (lbound(mv4(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv4(1,2)%e2,2).ne.2) error = error+1
    if (lbound(mv4(2,1)%e3,3).ne.3) error = error+1
    if (lbound(mv4(2,2)%e4,4).ne.4) error = error+1

    if (ubound(mv4(2,2)%e1,1).ne.1) error = error+1
    if (ubound(mv4(2,1)%e2,2).ne.2) error = error+1
    if (ubound(mv4(1,2)%e3,3).ne.3) error = error+1
    if (ubound(mv4(1,1)%e4,4).ne.4) error = error+1

    if (any(mv4(1,2)%e1 .ne.1))       error = error+1
    if (any(mv4(1,1)%e2 .ne.(1.,1.))) error = error+1
    if (any(mv4(2,2)%e3 .ne.""))      error = error+1
    if (any(mv4(2,1)%e4 .ne."ZZ"))    error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv4)

    allocate(mv5(2,2))

    mv5 = t1(l1,l2,l3,l4)

    if (.not.allocated(mv5(1,1)%e1)) error = error+1
    if (.not.allocated(mv5(1,2)%e2)) error = error+1
    if (.not.allocated(mv5(2,1)%e3)) error = error+1
    if (.not.allocated(mv5(2,2)%e4)) error = error+1

    if (.not.allocated(mv5(2,2)%e1)) error = error+1
    if (.not.allocated(mv5(2,1)%e2)) error = error+1
    if (.not.allocated(mv5(1,2)%e3)) error = error+1
    if (.not.allocated(mv5(1,1)%e4)) error = error+1

    if (lbound(mv5(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv5(1,2)%e2,2).ne.2) error = error+1
    if (lbound(mv5(2,1)%e3,3).ne.3) error = error+1
    if (lbound(mv5(2,2)%e4,4).ne.4) error = error+1

    if (ubound(mv5(2,2)%e1,1).ne.1) error = error+1
    if (ubound(mv5(2,1)%e2,2).ne.2) error = error+1
    if (ubound(mv5(1,2)%e3,3).ne.3) error = error+1
    if (ubound(mv5(1,1)%e4,4).ne.4) error = error+1

    if (any(mv5(1,2)%e1 .ne.1))       error = error+1
    if (any(mv5(1,1)%e2 .ne.(1.,1.))) error = error+1
    if (any(mv5(2,2)%e3 .ne.""))      error = error+1
    if (any(mv5(2,1)%e4 .ne."ZZ"))    error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv5)

    mv4 => mv2

    mv4 = t1(l1,l2,l3,l4)

    if (.not.allocated(mv2(1,1)%e1)) error = error+1
    if (.not.allocated(mv2(1,2)%e2)) error = error+1
    if (.not.allocated(mv2(2,1)%e3)) error = error+1
    if (.not.allocated(mv2(2,2)%e4)) error = error+1

    if (.not.allocated(mv2(2,2)%e1)) error = error+1
    if (.not.allocated(mv2(2,1)%e2)) error = error+1
    if (.not.allocated(mv2(1,2)%e3)) error = error+1
    if (.not.allocated(mv2(1,1)%e4)) error = error+1

    if (lbound(mv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv2(1,2)%e2,2).ne.2) error = error+1
    if (lbound(mv2(2,1)%e3,3).ne.3) error = error+1
    if (lbound(mv2(2,2)%e4,4).ne.4) error = error+1

    if (ubound(mv2(2,2)%e1,1).ne.1) error = error+1
    if (ubound(mv2(2,1)%e2,2).ne.2) error = error+1
    if (ubound(mv2(1,2)%e3,3).ne.3) error = error+1
    if (ubound(mv2(1,1)%e4,4).ne.4) error = error+1

    if (any(mv2(1,2)%e1 .ne.1))       error = error+1
    if (any(mv2(1,1)%e2 .ne.(1.,1.))) error = error+1
    if (any(mv2(2,2)%e3 .ne.""))      error = error+1
    if (any(mv2(2,1)%e4 .ne."ZZ"))    error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    allocate(mv5(2,2))
    mv4 => mv5

    mv4 = t1(l1,l2,l3,l4)

    if (.not.allocated(mv5(1,1)%e1)) error = error+1
    if (.not.allocated(mv5(1,2)%e2)) error = error+1
    if (.not.allocated(mv5(2,1)%e3)) error = error+1
    if (.not.allocated(mv5(2,2)%e4)) error = error+1

    if (.not.allocated(mv5(2,2)%e1)) error = error+1
    if (.not.allocated(mv5(2,1)%e2)) error = error+1
    if (.not.allocated(mv5(1,2)%e3)) error = error+1
    if (.not.allocated(mv5(1,1)%e4)) error = error+1

    if (lbound(mv5(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv5(1,2)%e2,2).ne.2) error = error+1
    if (lbound(mv5(2,1)%e3,3).ne.3) error = error+1
    if (lbound(mv5(2,2)%e4,4).ne.4) error = error+1

    if (ubound(mv5(2,2)%e1,1).ne.1) error = error+1
    if (ubound(mv5(2,1)%e2,2).ne.2) error = error+1
    if (ubound(mv5(1,2)%e3,3).ne.3) error = error+1
    if (ubound(mv5(1,1)%e4,4).ne.4) error = error+1

    if (any(mv5(1,2)%e1 .ne.1))       error = error+1
    if (any(mv5(1,1)%e2 .ne.(1.,1.))) error = error+1
    if (any(mv5(2,2)%e3 .ne.""))      error = error+1
    if (any(mv5(2,1)%e4 .ne."ZZ"))    error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate(mv5)

    mv4 => mv2

    mv2 = t1(l1,l2,l3,l4)

    if (.not.allocated(mv4(1,1)%e1)) error = error+1
    if (.not.allocated(mv4(1,2)%e2)) error = error+1
    if (.not.allocated(mv4(2,1)%e3)) error = error+1
    if (.not.allocated(mv4(2,2)%e4)) error = error+1

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    if (lbound(mv4(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv4(1,2)%e2,2).ne.2) error = error+1
    if (lbound(mv4(2,1)%e3,3).ne.3) error = error+1
    if (lbound(mv4(2,2)%e4,4).ne.4) error = error+1

    if (ubound(mv4(2,2)%e1,1).ne.1) error = error+1
    if (ubound(mv4(2,1)%e2,2).ne.2) error = error+1
    if (ubound(mv4(1,2)%e3,3).ne.3) error = error+1
    if (ubound(mv4(1,1)%e4,4).ne.4) error = error+1

    if (any(mv4(1,2)%e1 .ne.1))       error = error+1
    if (any(mv4(1,1)%e2 .ne.(1.,1.))) error = error+1
    if (any(mv4(2,2)%e3 .ne.""))      error = error+1
    if (any(mv4(2,1)%e4 .ne."ZZ"))    error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    allocate(mv5(2,2))
    mv4 => mv5

    mv5 = t1(l1,l2,l3,l4)

    if (.not.allocated(mv4(1,1)%e1)) error = error+1
    if (.not.allocated(mv4(1,2)%e2)) error = error+1
    if (.not.allocated(mv4(2,1)%e3)) error = error+1
    if (.not.allocated(mv4(2,2)%e4)) error = error+1

    if (.not.allocated(mv4(2,2)%e1)) error = error+1
    if (.not.allocated(mv4(2,1)%e2)) error = error+1
    if (.not.allocated(mv4(1,2)%e3)) error = error+1
    if (.not.allocated(mv4(1,1)%e4)) error = error+1

    if (lbound(mv4(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv4(1,2)%e2,2).ne.2) error = error+1
    if (lbound(mv4(2,1)%e3,3).ne.3) error = error+1
    if (lbound(mv4(2,2)%e4,4).ne.4) error = error+1

    if (ubound(mv4(2,2)%e1,1).ne.1) error = error+1
    if (ubound(mv4(2,1)%e2,2).ne.2) error = error+1
    if (ubound(mv4(1,2)%e3,3).ne.3) error = error+1
    if (ubound(mv4(1,1)%e4,4).ne.4) error = error+1

    if (any(mv4(1,2)%e1 .ne.1))       error = error+1
    if (any(mv4(1,1)%e2 .ne.(1.,1.))) error = error+1
    if (any(mv4(2,2)%e3 .ne.""))      error = error+1
    if (any(mv4(2,1)%e4 .ne."ZZ"))    error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate(mv5)

    print *," *** pass *** "

  end program main
