  module typ

    type zzz
      integer     , allocatable :: ai(:)
      complex     , allocatable :: ax(:)
      character(0), allocatable :: ac0(:)
      character(2), allocatable :: ac2(:)
      integer                   :: ii(1:1) = 1
      integer                   :: ix(2:-1) = (1.,1.)
      character(0)              :: ic0(-4:4) = "abcdefg"
      character(2)              :: ic2(8:8) = "DI"
      integer     , pointer     :: pi(:) => null()
      integer     , pointer     :: px(:) => null()
      character(0), pointer     :: pc0(:) => null()
      character(2), pointer     :: pc2(:) => null()
    end type

    type (zzz),save        :: mzs
    type (zzz),allocatable :: mzaa(:)

  end module

  module mod
    contains

    subroutine sub_xaao(axso)
      use typ,only: zzz
      type(zzz),allocatable,intent(out) :: axso(:)
    end subroutine

  end module

    use typ
    use mod

    integer :: error = 0

    type(zzz) :: vvv
    integer     , target     :: ti(1:1) = 555
    integer     , target     :: tx(2:-1) = (3.14,3.14)
    character(0), target     :: tc0(-4:4) = "VWXYZ"
    character(2), target     :: tc2(8:8) = "TG"
    vvv = zzz((/555/),(/(3.14,3.14)/),(/""/),(/"VL"/), &
         &    (/555/),mzs%ix,reshape((/("",i=1,9)/),(/9/)),(/"VL"/), &
         &    ti,tx,tc0,tc2)
	
    allocate(mzaa(0:0))

    mzaa = vvv ; call sub_xaao(mzaa)
    if(allocated(mzaa)) error = error+1
    if (error /= 0) then
      print *,'ng ',error
    end if

    print *,'pass'

  end
