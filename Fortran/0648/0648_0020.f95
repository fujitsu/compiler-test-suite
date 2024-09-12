  module mod

    type t1
      integer,allocatable :: e1(:)
      complex,allocatable :: e2(:,:)
      character(0),allocatable :: e3(:,:,:)
      character(2),allocatable :: e4(:,:,:,:)
    end type t1

    type(t1)             :: mv1
    type(t1)             :: mv2(2,2)
    type(t1),allocatable :: mv3(:,:)

  end module mod

  program main

    use mod

    type(t1)             :: hv1
    type(t1)             :: hv2(2,2)
    type(t1),allocatable :: hv3(:,:)

    integer :: error = 0
    integer :: e1(1:0)
    complex :: e2(1:0,2:0)
    character(0) :: e3(1:0,2:0,3:0)
    character(2) :: e4(1:0,2:0,3:0,4:0)

    e1 = 1
    e2 = (1.,1.)
    e3 = "aaa"
    e4 = "ZZ"

    if (allocated(mv1%e1)) error = error+1
    if (allocated(mv1%e2)) error = error+1
    if (allocated(mv1%e3)) error = error+1
    if (allocated(mv1%e4)) error = error+1

    mv1 = t1(e1,e2,e3,e4)

    if (.not.allocated(mv1%e1)) error = error+1
    if (.not.allocated(mv1%e2)) error = error+1
    if (.not.allocated(mv1%e3)) error = error+1
    if (.not.allocated(mv1%e4)) error = error+1

    if (lbound(mv1%e1,1).ne.1) error = error+1
    if (lbound(mv1%e2,2).ne.1) error = error+1
    if (lbound(mv1%e3,3).ne.1) error = error+1
    if (lbound(mv1%e4,4).ne.1) error = error+1

    if (ubound(mv1%e1,1).ne.0) error = error+1
    if (ubound(mv1%e2,2).ne.0) error = error+1
    if (ubound(mv1%e3,3).ne.0) error = error+1
    if (ubound(mv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    mv1 = t1(null(),null(),null(),null())

    if (allocated(mv2(1,1)%e1)) error = error+1
    if (allocated(mv2(1,2)%e2)) error = error+1
    if (allocated(mv2(2,1)%e3)) error = error+1
    if (allocated(mv2(2,2)%e4)) error = error+1

    mv2 = t1(e1,e2,e3,e4)

    if (.not.allocated(mv2(1,1)%e1)) error = error+1
    if (.not.allocated(mv2(1,2)%e2)) error = error+1
    if (.not.allocated(mv2(2,1)%e3)) error = error+1
    if (.not.allocated(mv2(2,2)%e4)) error = error+1

    if (lbound(mv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(mv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(mv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(mv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(mv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(mv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(mv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    mv2 = t1(null(),null(),null(),null())

    if (allocated(mv3)) error = error+1

    allocate (mv3(2,2))

    if (allocated(mv3(1,1)%e1)) error = error+1
    if (allocated(mv3(1,2)%e2)) error = error+1
    if (allocated(mv3(2,1)%e3)) error = error+1
    if (allocated(mv3(2,2)%e4)) error = error+1

    mv3 = t1(e1,e2,e3,e4)

    if (.not.allocated(mv3(1,1)%e1)) error = error+1
    if (.not.allocated(mv3(1,2)%e2)) error = error+1
    if (.not.allocated(mv3(2,1)%e3)) error = error+1
    if (.not.allocated(mv3(2,2)%e4)) error = error+1

    if (lbound(mv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(mv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(mv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(mv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(mv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(mv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(mv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv3)

    if (allocated(hv1%e1)) error = error+1
    if (allocated(hv1%e2)) error = error+1
    if (allocated(hv1%e3)) error = error+1
    if (allocated(hv1%e4)) error = error+1

    hv1 = t1(e1,e2,e3,e4)

    if (.not.allocated(hv1%e1)) error = error+1
    if (.not.allocated(hv1%e2)) error = error+1
    if (.not.allocated(hv1%e3)) error = error+1
    if (.not.allocated(hv1%e4)) error = error+1

    if (lbound(hv1%e1,1).ne.1) error = error+1
    if (lbound(hv1%e2,2).ne.1) error = error+1
    if (lbound(hv1%e3,3).ne.1) error = error+1
    if (lbound(hv1%e4,4).ne.1) error = error+1

    if (ubound(hv1%e1,1).ne.0) error = error+1
    if (ubound(hv1%e2,2).ne.0) error = error+1
    if (ubound(hv1%e3,3).ne.0) error = error+1
    if (ubound(hv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    hv1 = t1(null(),null(),null(),null())

    if (allocated(hv2(1,1)%e1)) error = error+1
    if (allocated(hv2(1,2)%e2)) error = error+1
    if (allocated(hv2(2,1)%e3)) error = error+1
    if (allocated(hv2(2,2)%e4)) error = error+1

    hv2 = t1(e1,e2,e3,e4)

    if (.not.allocated(hv2(1,1)%e1)) error = error+1
    if (.not.allocated(hv2(1,2)%e2)) error = error+1
    if (.not.allocated(hv2(2,1)%e3)) error = error+1
    if (.not.allocated(hv2(2,2)%e4)) error = error+1

    if (lbound(hv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(hv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(hv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(hv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(hv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(hv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(hv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(hv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    hv2 = t1(null(),null(),null(),null())

    if (allocated(hv3)) error = error+1

    allocate (hv3(2,2))

    if (allocated(hv3(1,1)%e1)) error = error+1
    if (allocated(hv3(1,2)%e2)) error = error+1
    if (allocated(hv3(2,1)%e3)) error = error+1
    if (allocated(hv3(2,2)%e4)) error = error+1

    hv3 = t1(e1,e2,e3,e4)

    if (.not.allocated(hv3(1,1)%e1)) error = error+1
    if (.not.allocated(hv3(1,2)%e2)) error = error+1
    if (.not.allocated(hv3(2,1)%e3)) error = error+1
    if (.not.allocated(hv3(2,2)%e4)) error = error+1

    if (lbound(hv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(hv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(hv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(hv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(hv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(hv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(hv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(hv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (hv3)

    call insub1()
    call insub1()

    allocate(mv3(2,2),hv3(2,2))
    mv1 = t1(e1,e2,e3,e4)
    mv2 = t1(e1,e2,e3,e4)
    mv3 = t1(e1,e2,e3,e4)
    hv1 = t1(e1,e2,e3,e4)
    hv2 = t1(e1,e2,e3,e4)
    hv3 = t1(e1,e2,e3,e4)

    call insub2()

    call exsub()

    print *," *** pass *** "

    contains

    subroutine insub1()

    type(t1)             :: lv1
    type(t1)             :: lv2(2,2)
    type(t1),allocatable :: lv3(:,:)

    if (allocated(mv1%e1)) error = error+1
    if (allocated(mv1%e2)) error = error+1
    if (allocated(mv1%e3)) error = error+1
    if (allocated(mv1%e4)) error = error+1

    mv1 = t1(e1,e2,e3,e4)

    if (.not.allocated(mv1%e1)) error = error+1
    if (.not.allocated(mv1%e2)) error = error+1
    if (.not.allocated(mv1%e3)) error = error+1
    if (.not.allocated(mv1%e4)) error = error+1

    if (lbound(mv1%e1,1).ne.1) error = error+1
    if (lbound(mv1%e2,2).ne.1) error = error+1
    if (lbound(mv1%e3,3).ne.1) error = error+1
    if (lbound(mv1%e4,4).ne.1) error = error+1

    if (ubound(mv1%e1,1).ne.0) error = error+1
    if (ubound(mv1%e2,2).ne.0) error = error+1
    if (ubound(mv1%e3,3).ne.0) error = error+1
    if (ubound(mv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    mv1 = t1(null(),null(),null(),null())

    if (allocated(mv2(1,1)%e1)) error = error+1
    if (allocated(mv2(1,2)%e2)) error = error+1
    if (allocated(mv2(2,1)%e3)) error = error+1
    if (allocated(mv2(2,2)%e4)) error = error+1

    mv2 = t1(e1,e2,e3,e4)

    if (.not.allocated(mv2(1,1)%e1)) error = error+1
    if (.not.allocated(mv2(1,2)%e2)) error = error+1
    if (.not.allocated(mv2(2,1)%e3)) error = error+1
    if (.not.allocated(mv2(2,2)%e4)) error = error+1

    if (lbound(mv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(mv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(mv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(mv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(mv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(mv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(mv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    mv2 = t1(null(),null(),null(),null())

    if (allocated(mv3)) error = error+1

    allocate (mv3(2,2))

    if (allocated(mv3(1,1)%e1)) error = error+1
    if (allocated(mv3(1,2)%e2)) error = error+1
    if (allocated(mv3(2,1)%e3)) error = error+1
    if (allocated(mv3(2,2)%e4)) error = error+1

    mv3 = t1(e1,e2,e3,e4)

    if (.not.allocated(mv3(1,1)%e1)) error = error+1
    if (.not.allocated(mv3(1,2)%e2)) error = error+1
    if (.not.allocated(mv3(2,1)%e3)) error = error+1
    if (.not.allocated(mv3(2,2)%e4)) error = error+1

    if (lbound(mv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(mv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(mv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(mv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(mv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(mv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(mv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (mv3)

    if (allocated(hv1%e1)) error = error+1
    if (allocated(hv1%e2)) error = error+1
    if (allocated(hv1%e3)) error = error+1
    if (allocated(hv1%e4)) error = error+1

    hv1 = t1(e1,e2,e3,e4)

    if (.not.allocated(hv1%e1)) error = error+1
    if (.not.allocated(hv1%e2)) error = error+1
    if (.not.allocated(hv1%e3)) error = error+1
    if (.not.allocated(hv1%e4)) error = error+1

    if (lbound(hv1%e1,1).ne.1) error = error+1
    if (lbound(hv1%e2,2).ne.1) error = error+1
    if (lbound(hv1%e3,3).ne.1) error = error+1
    if (lbound(hv1%e4,4).ne.1) error = error+1

    if (ubound(hv1%e1,1).ne.0) error = error+1
    if (ubound(hv1%e2,2).ne.0) error = error+1
    if (ubound(hv1%e3,3).ne.0) error = error+1
    if (ubound(hv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    hv1 = t1(null(),null(),null(),null())

    if (allocated(hv2(1,1)%e1)) error = error+1
    if (allocated(hv2(1,2)%e2)) error = error+1
    if (allocated(hv2(2,1)%e3)) error = error+1
    if (allocated(hv2(2,2)%e4)) error = error+1

    hv2 = t1(e1,e2,e3,e4)

    if (.not.allocated(hv2(1,1)%e1)) error = error+1
    if (.not.allocated(hv2(1,2)%e2)) error = error+1
    if (.not.allocated(hv2(2,1)%e3)) error = error+1
    if (.not.allocated(hv2(2,2)%e4)) error = error+1

    if (lbound(hv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(hv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(hv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(hv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(hv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(hv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(hv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(hv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    hv2 = t1(null(),null(),null(),null())

    if (allocated(hv3)) error = error+1

    allocate (hv3(2,2))

    if (allocated(hv3(1,1)%e1)) error = error+1
    if (allocated(hv3(1,2)%e2)) error = error+1
    if (allocated(hv3(2,1)%e3)) error = error+1
    if (allocated(hv3(2,2)%e4)) error = error+1

    hv3 = t1(e1,e2,e3,e4)

    if (.not.allocated(hv3(1,1)%e1)) error = error+1
    if (.not.allocated(hv3(1,2)%e2)) error = error+1
    if (.not.allocated(hv3(2,1)%e3)) error = error+1
    if (.not.allocated(hv3(2,2)%e4)) error = error+1

    if (lbound(hv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(hv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(hv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(hv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(hv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(hv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(hv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(hv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    deallocate (hv3)

    if (allocated(lv1%e1)) error = error+1
    if (allocated(lv1%e2)) error = error+1
    if (allocated(lv1%e3)) error = error+1
    if (allocated(lv1%e4)) error = error+1

    lv1 = t1(e1,e2,e3,e4)

    if (.not.allocated(lv1%e1)) error = error+1
    if (.not.allocated(lv1%e2)) error = error+1
    if (.not.allocated(lv1%e3)) error = error+1
    if (.not.allocated(lv1%e4)) error = error+1

    if (lbound(lv1%e1,1).ne.1) error = error+1
    if (lbound(lv1%e2,2).ne.1) error = error+1
    if (lbound(lv1%e3,3).ne.1) error = error+1
    if (lbound(lv1%e4,4).ne.1) error = error+1

    if (ubound(lv1%e1,1).ne.0) error = error+1
    if (ubound(lv1%e2,2).ne.0) error = error+1
    if (ubound(lv1%e3,3).ne.0) error = error+1
    if (ubound(lv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (allocated(lv2(1,1)%e1)) error = error+1
    if (allocated(lv2(1,2)%e2)) error = error+1
    if (allocated(lv2(2,1)%e3)) error = error+1
    if (allocated(lv2(2,2)%e4)) error = error+1

    lv2 = t1(e1,e2,e3,e4)

    if (.not.allocated(lv2(1,1)%e1)) error = error+1
    if (.not.allocated(lv2(1,2)%e2)) error = error+1
    if (.not.allocated(lv2(2,1)%e3)) error = error+1
    if (.not.allocated(lv2(2,2)%e4)) error = error+1

    if (lbound(lv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(lv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(lv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(lv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(lv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(lv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(lv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(lv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (allocated(lv3)) error = error+1

    allocate (lv3(2,2))

    if (allocated(lv3(1,1)%e1)) error = error+1
    if (allocated(lv3(1,2)%e2)) error = error+1
    if (allocated(lv3(2,1)%e3)) error = error+1
    if (allocated(lv3(2,2)%e4)) error = error+1

    lv3 = t1(e1,e2,e3,e4)

    if (.not.allocated(lv3(1,1)%e1)) error = error+1
    if (.not.allocated(lv3(1,2)%e2)) error = error+1
    if (.not.allocated(lv3(2,1)%e3)) error = error+1
    if (.not.allocated(lv3(2,2)%e4)) error = error+1

    if (lbound(lv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(lv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(lv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(lv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(lv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(lv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(lv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(lv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    end subroutine insub1

    recursive subroutine insub2()

    integer,save :: count = 0

    type(t1)             :: lv1
    type(t1)             :: lv2(2,2)
    type(t1),allocatable :: lv3(:,:)

    count = count+1

    if (.not.allocated(mv1%e1)) error = error+1
    if (.not.allocated(mv1%e2)) error = error+1
    if (.not.allocated(mv1%e3)) error = error+1
    if (.not.allocated(mv1%e4)) error = error+1

    if (lbound(mv1%e1,1).ne.1) error = error+1
    if (lbound(mv1%e2,2).ne.1) error = error+1
    if (lbound(mv1%e3,3).ne.1) error = error+1
    if (lbound(mv1%e4,4).ne.1) error = error+1

    if (ubound(mv1%e1,1).ne.0) error = error+1
    if (ubound(mv1%e2,2).ne.0) error = error+1
    if (ubound(mv1%e3,3).ne.0) error = error+1
    if (ubound(mv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (.not.allocated(mv2(1,1)%e1)) error = error+1
    if (.not.allocated(mv2(1,2)%e2)) error = error+1
    if (.not.allocated(mv2(2,1)%e3)) error = error+1
    if (.not.allocated(mv2(2,2)%e4)) error = error+1

    if (lbound(mv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(mv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(mv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(mv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(mv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(mv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(mv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (.not.allocated(mv3(1,1)%e1)) error = error+1
    if (.not.allocated(mv3(1,2)%e2)) error = error+1
    if (.not.allocated(mv3(2,1)%e3)) error = error+1
    if (.not.allocated(mv3(2,2)%e4)) error = error+1

    if (lbound(mv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(mv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(mv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(mv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(mv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(mv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(mv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (.not.allocated(hv1%e1)) error = error+1
    if (.not.allocated(hv1%e2)) error = error+1
    if (.not.allocated(hv1%e3)) error = error+1
    if (.not.allocated(hv1%e4)) error = error+1

    if (lbound(hv1%e1,1).ne.1) error = error+1
    if (lbound(hv1%e2,2).ne.1) error = error+1
    if (lbound(hv1%e3,3).ne.1) error = error+1
    if (lbound(hv1%e4,4).ne.1) error = error+1

    if (ubound(hv1%e1,1).ne.0) error = error+1
    if (ubound(hv1%e2,2).ne.0) error = error+1
    if (ubound(hv1%e3,3).ne.0) error = error+1
    if (ubound(hv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (.not.allocated(hv2(1,1)%e1)) error = error+1
    if (.not.allocated(hv2(1,2)%e2)) error = error+1
    if (.not.allocated(hv2(2,1)%e3)) error = error+1
    if (.not.allocated(hv2(2,2)%e4)) error = error+1

    if (lbound(hv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(hv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(hv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(hv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(hv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(hv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(hv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(hv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (.not.allocated(hv3(1,1)%e1)) error = error+1
    if (.not.allocated(hv3(1,2)%e2)) error = error+1
    if (.not.allocated(hv3(2,1)%e3)) error = error+1
    if (.not.allocated(hv3(2,2)%e4)) error = error+1

    if (lbound(hv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(hv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(hv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(hv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(hv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(hv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(hv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(hv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (allocated(lv1%e1)) error = error+1
    if (allocated(lv1%e2)) error = error+1
    if (allocated(lv1%e3)) error = error+1
    if (allocated(lv1%e4)) error = error+1

    lv1 = t1(e1,e2,e3,e4)

    if (.not.allocated(lv1%e1)) error = error+1
    if (.not.allocated(lv1%e2)) error = error+1
    if (.not.allocated(lv1%e3)) error = error+1
    if (.not.allocated(lv1%e4)) error = error+1

    if (lbound(lv1%e1,1).ne.1) error = error+1
    if (lbound(lv1%e2,2).ne.1) error = error+1
    if (lbound(lv1%e3,3).ne.1) error = error+1
    if (lbound(lv1%e4,4).ne.1) error = error+1

    if (ubound(lv1%e1,1).ne.0) error = error+1
    if (ubound(lv1%e2,2).ne.0) error = error+1
    if (ubound(lv1%e3,3).ne.0) error = error+1
    if (ubound(lv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (allocated(lv2(1,1)%e1)) error = error+1
    if (allocated(lv2(1,2)%e2)) error = error+1
    if (allocated(lv2(2,1)%e3)) error = error+1
    if (allocated(lv2(2,2)%e4)) error = error+1

    lv2 = t1(e1,e2,e3,e4)

    if (.not.allocated(lv2(1,1)%e1)) error = error+1
    if (.not.allocated(lv2(1,2)%e2)) error = error+1
    if (.not.allocated(lv2(2,1)%e3)) error = error+1
    if (.not.allocated(lv2(2,2)%e4)) error = error+1

    if (lbound(lv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(lv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(lv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(lv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(lv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(lv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(lv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(lv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (allocated(lv3)) error = error+1

    allocate (lv3(2,2))

    if (allocated(lv3(1,1)%e1)) error = error+1
    if (allocated(lv3(1,2)%e2)) error = error+1
    if (allocated(lv3(2,1)%e3)) error = error+1
    if (allocated(lv3(2,2)%e4)) error = error+1

    lv3 = t1(e1,e2,e3,e4)

    if (.not.allocated(lv3(1,1)%e1)) error = error+1
    if (.not.allocated(lv3(1,2)%e2)) error = error+1
    if (.not.allocated(lv3(2,1)%e3)) error = error+1
    if (.not.allocated(lv3(2,2)%e4)) error = error+1

    if (lbound(lv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(lv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(lv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(lv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(lv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(lv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(lv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(lv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (count < 2) call insub2()

    end subroutine insub2

  end program main

  recursive subroutine exsub()

    use mod

    entry ent1()

    integer , save :: count = 0

    integer :: error = 0
    integer :: e1(1:0)
    complex :: e2(1:0,2:0)
    character(0) :: e3(1:0,2:0,3:0)
    character(2) :: e4(1:0,2:0,3:0,4:0)

    type(t1)             :: lv1
    type(t1)             :: lv2(2,2)
    type(t1),allocatable :: lv3(:,:)

    entry ent2()

    if (.not.allocated(mv1%e1)) error = error+1
    if (.not.allocated(mv1%e2)) error = error+1
    if (.not.allocated(mv1%e3)) error = error+1
    if (.not.allocated(mv1%e4)) error = error+1

    if (lbound(mv1%e1,1).ne.1) error = error+1
    if (lbound(mv1%e2,2).ne.1) error = error+1
    if (lbound(mv1%e3,3).ne.1) error = error+1
    if (lbound(mv1%e4,4).ne.1) error = error+1

    if (ubound(mv1%e1,1).ne.0) error = error+1
    if (ubound(mv1%e2,2).ne.0) error = error+1
    if (ubound(mv1%e3,3).ne.0) error = error+1
    if (ubound(mv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (.not.allocated(mv2(1,1)%e1)) error = error+1
    if (.not.allocated(mv2(1,2)%e2)) error = error+1
    if (.not.allocated(mv2(2,1)%e3)) error = error+1
    if (.not.allocated(mv2(2,2)%e4)) error = error+1

    if (lbound(mv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(mv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(mv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(mv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(mv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(mv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(mv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (.not.allocated(mv3(1,1)%e1)) error = error+1
    if (.not.allocated(mv3(1,2)%e2)) error = error+1
    if (.not.allocated(mv3(2,1)%e3)) error = error+1
    if (.not.allocated(mv3(2,2)%e4)) error = error+1

    if (lbound(mv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(mv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(mv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(mv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(mv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(mv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(mv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(mv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    entry ent3()

    if (allocated(lv1%e1)) error = error+1
    if (allocated(lv1%e2)) error = error+1
    if (allocated(lv1%e3)) error = error+1
    if (allocated(lv1%e4)) error = error+1

    lv1 = t1(e1,e2,e3,e4)

    if (.not.allocated(lv1%e1)) error = error+1
    if (.not.allocated(lv1%e2)) error = error+1
    if (.not.allocated(lv1%e3)) error = error+1
    if (.not.allocated(lv1%e4)) error = error+1

    if (lbound(lv1%e1,1).ne.1) error = error+1
    if (lbound(lv1%e2,2).ne.1) error = error+1
    if (lbound(lv1%e3,3).ne.1) error = error+1
    if (lbound(lv1%e4,4).ne.1) error = error+1

    if (ubound(lv1%e1,1).ne.0) error = error+1
    if (ubound(lv1%e2,2).ne.0) error = error+1
    if (ubound(lv1%e3,3).ne.0) error = error+1
    if (ubound(lv1%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (allocated(lv2(1,1)%e1)) error = error+1
    if (allocated(lv2(1,2)%e2)) error = error+1
    if (allocated(lv2(2,1)%e3)) error = error+1
    if (allocated(lv2(2,2)%e4)) error = error+1

    lv2 = t1(e1,e2,e3,e4)

    if (.not.allocated(lv2(1,1)%e1)) error = error+1
    if (.not.allocated(lv2(1,2)%e2)) error = error+1
    if (.not.allocated(lv2(2,1)%e3)) error = error+1
    if (.not.allocated(lv2(2,2)%e4)) error = error+1

    if (lbound(lv2(1,1)%e1,1).ne.1) error = error+1
    if (lbound(lv2(1,2)%e2,2).ne.1) error = error+1
    if (lbound(lv2(2,1)%e3,3).ne.1) error = error+1
    if (lbound(lv2(2,2)%e4,4).ne.1) error = error+1

    if (ubound(lv2(1,1)%e1,1).ne.0) error = error+1
    if (ubound(lv2(1,2)%e2,2).ne.0) error = error+1
    if (ubound(lv2(2,1)%e3,3).ne.0) error = error+1
    if (ubound(lv2(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    if (allocated(lv3)) error = error+1

    allocate (lv3(2,2))

    if (allocated(lv3(1,1)%e1)) error = error+1
    if (allocated(lv3(1,2)%e2)) error = error+1
    if (allocated(lv3(2,1)%e3)) error = error+1
    if (allocated(lv3(2,2)%e4)) error = error+1

    lv3 = t1(e1,e2,e3,e4)

    if (.not.allocated(lv3(1,1)%e1)) error = error+1
    if (.not.allocated(lv3(1,2)%e2)) error = error+1
    if (.not.allocated(lv3(2,1)%e3)) error = error+1
    if (.not.allocated(lv3(2,2)%e4)) error = error+1

    if (lbound(lv3(1,1)%e1,1).ne.1) error = error+1
    if (lbound(lv3(1,2)%e2,2).ne.1) error = error+1
    if (lbound(lv3(2,1)%e3,3).ne.1) error = error+1
    if (lbound(lv3(2,2)%e4,4).ne.1) error = error+1

    if (ubound(lv3(1,1)%e1,1).ne.0) error = error+1
    if (ubound(lv3(1,2)%e2,2).ne.0) error = error+1
    if (ubound(lv3(2,1)%e3,3).ne.0) error = error+1
    if (ubound(lv3(2,2)%e4,4).ne.0) error = error+1

    if (error .ne. 0) then
      print *," +++ NG +++ ",error
      error = 0
    end if

    count = count+1
    selectcase (count)
      case (1)
        call ent1()
      case (2)
        call ent2()
      case (3)
        call ent3()
    end select

    end subroutine exsub
