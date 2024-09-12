  module typ

    type yyy
      integer     , allocatable :: ai(:)
      complex     , allocatable :: ax(:)
      character(0), allocatable :: ac0(:)
      character(2), allocatable :: ac2(:)
      integer     , pointer     :: pi(:) => null()
      integer     , pointer     :: px(:) => null()
      character(0), pointer     :: pc0(:) => null()
      character(2), pointer     :: pc2(:) => null()
    end type

    type (yyy),allocatable :: myaa(:)

  end module

  module mod
    contains

    subroutine sub_xaao(axso)
      use typ,only: yyy
      type(yyy),allocatable,intent(out) :: axso(:)
    end subroutine

  end module

    use typ
    use mod

    integer :: error = 0

    type(yyy) :: vvv
    integer     , target     :: ti(1:1) = 555
    integer     , target     :: tx(2:-1) = (3.14,3.14)
    character(0), target     :: tc0(-4:4) = "VWXYZ"
    character(2), target     :: tc2(8:8) = "TG"
    vvv = yyy((/555/),(/(3.14,3.14)/),(/""/),(/"VL"/), &
         &    ti,tx,tc0,tc2)
	
    allocate(myaa(0:0))

    myaa = vvv ; call sub_xaao(myaa)
    if(allocated(myaa)) error = error+1
    if (error /= 0) then
      print *, " ng ",error
    end if

    print *,'pass'

  end
