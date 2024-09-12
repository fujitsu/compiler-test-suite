  module typ

    type xxx
      integer     , allocatable :: ai(:)
      complex     , allocatable :: ax(:)
      character(0), allocatable :: ac0(:)
      character(2), allocatable :: ac2(:)
      integer                   :: ii(1:1) = 1
      integer                   :: ix(2:-1) = (1.,1.)
      character(0)              :: ic0(-4:4) = "abcdefg"
      character(2)              :: ic2(8:8) = "DI"
    end type

    type (xxx),save        :: mxs
    type (xxx),allocatable :: mxaa(:)

  end module

  module mod
    contains

    subroutine sub_xaao(axso)
      use typ,only: xxx
      type(xxx),allocatable,intent(out) :: axso(:)
    end subroutine

  end module

    use typ
    use mod

    integer :: error = 0

    type(xxx) :: vvv
    vvv = xxx((/555/),(/(3.14,3.14)/),(/""/),(/"VL"/), &
         &    (/555/),mxs%ix,reshape((/("",i=1,9)/),(/9/)),(/"VL"/))
	
    allocate(mxaa(0:0))

    mxaa = vvv ; call sub_xaao(mxaa)
    if(allocated(mxaa)) error = error+1
    if (error /= 0) then
      print *, "ng ",error
    end if

    print *,'pass'

  end
