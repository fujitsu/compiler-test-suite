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

    type (zzz),save        :: mzs,mzea(1:1),mz0a(1:-1)
    type (zzz),pointer     :: mzps,mzpa(:)
    type (zzz),allocatable :: mzaa(:)

  end module

  module mod
    contains

    subroutine sub_xso(axso)
      use typ,only: zzz
      type(zzz),intent(out) :: axso
    end subroutine

    subroutine sub_xao(axso)
      use typ,only: zzz
      type(zzz),intent(out) :: axso(0:)
    end subroutine

    subroutine sub_xpso(axso)
      use typ,only: zzz
      type(zzz),pointer :: axso
      allocate (axso)
    end subroutine

    subroutine sub_xpao(axso)
      use typ,only: zzz
      type(zzz),pointer :: axso(:)
      allocate (axso(0:0))
    end subroutine

  end module

  program main

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

    allocate(mzps,mzpa(0:0),mzaa(0:0))

    mzs  = vvv ; call sub_xso(mzs)
    if(allocated(mzs %ai )) error = error+1
    if(allocated(mzs %ax )) error = error+1
    if(allocated(mzs %ac0)) error = error+1
    if(allocated(mzs %ac2)) error = error+1
    if(any(mzs %ii /= 1      )) error = error+1
    if(any(mzs %ix /= (1.,1.))) error = error+1
    if(any(mzs %ic0/= ""     )) error = error+1
    if(any(mzs %ic2/= "DI"   )) error = error+1
    if(associated(mzs %pi )) error = error+1
    if(associated(mzs %px )) error = error+1
    if(associated(mzs %pc0)) error = error+1
    if(associated(mzs %pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,1
      error = 0
    end if

    mzea = vvv ; call sub_xso(mzea(1))
    if(allocated(mzea(1)%ai )) error = error+1
    if(allocated(mzea(1)%ax )) error = error+1
    if(allocated(mzea(1)%ac0)) error = error+1
    if(allocated(mzea(1)%ac2)) error = error+1
    if(any(mzea(1)%ii /= 1      )) error = error+1
    if(any(mzea(1)%ix /= (1.,1.))) error = error+1
    if(any(mzea(1)%ic0/= ""     )) error = error+1
    if(any(mzea(1)%ic2/= "DI"   )) error = error+1
    if(associated(mzea(1)%pi )) error = error+1
    if(associated(mzea(1)%px )) error = error+1
    if(associated(mzea(1)%pc0)) error = error+1
    if(associated(mzea(1)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,2
      error = 0
    end if

    mzps = vvv ; call sub_xso(mzps)
    if(allocated(mzps%ai )) error = error+1
    if(allocated(mzps%ax )) error = error+1
    if(allocated(mzps%ac0)) error = error+1
    if(allocated(mzps%ac2)) error = error+1
    if(any(mzps%ii /= 1      )) error = error+1
    if(any(mzps%ix /= (1.,1.))) error = error+1
    if(any(mzps%ic0/= ""     )) error = error+1
    if(any(mzps%ic2/= "DI"   )) error = error+1
    if(associated(mzps%pi )) error = error+1
    if(associated(mzps%px )) error = error+1
    if(associated(mzps%pc0)) error = error+1
    if(associated(mzps%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,3
      error = 0
    end if

    mzpa = vvv ; call sub_xso(mzpa(0))
    if(allocated(mzpa(0)%ai )) error = error+1
    if(allocated(mzpa(0)%ax )) error = error+1
    if(allocated(mzpa(0)%ac0)) error = error+1
    if(allocated(mzpa(0)%ac2)) error = error+1
    if(any(mzpa(0)%ii /= 1      )) error = error+1
    if(any(mzpa(0)%ix /= (1.,1.))) error = error+1
    if(any(mzpa(0)%ic0/= ""     )) error = error+1
    if(any(mzpa(0)%ic2/= "DI"   )) error = error+1
    if(associated(mzpa(0)%pi )) error = error+1
    if(associated(mzpa(0)%px )) error = error+1
    if(associated(mzpa(0)%pc0)) error = error+1
    if(associated(mzpa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,4
      error = 0
    end if

    mzaa = vvv ; call sub_xso(mzaa(0))
    if(allocated(mzaa(0)%ai )) error = error+1
    if(allocated(mzaa(0)%ax )) error = error+1
    if(allocated(mzaa(0)%ac0)) error = error+1
    if(allocated(mzaa(0)%ac2)) error = error+1
    if(any(mzaa(0)%ii /= 1      )) error = error+1
    if(any(mzaa(0)%ix /= (1.,1.))) error = error+1
    if(any(mzaa(0)%ic0/= ""     )) error = error+1
    if(any(mzaa(0)%ic2/= "DI"   )) error = error+1
    if(associated(mzaa(0)%pi )) error = error+1
    if(associated(mzaa(0)%px )) error = error+1
    if(associated(mzaa(0)%pc0)) error = error+1
    if(associated(mzaa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,4
      error = 0
    end if

    mzea = vvv ; call sub_xao(mzea)
    if(allocated(mzea(1)%ai )) error = error+1
    if(allocated(mzea(1)%ax )) error = error+1
    if(allocated(mzea(1)%ac0)) error = error+1
    if(allocated(mzea(1)%ac2)) error = error+1
    if(any(mzea(1)%ii /= 1      )) error = error+1
    if(any(mzea(1)%ix /= (1.,1.))) error = error+1
    if(any(mzea(1)%ic0/= ""     )) error = error+1
    if(any(mzea(1)%ic2/= "DI"   )) error = error+1
    if(associated(mzea(1)%pi )) error = error+1
    if(associated(mzea(1)%px )) error = error+1
    if(associated(mzea(1)%pc0)) error = error+1
    if(associated(mzea(1)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,5
      error = 0
    end if

    mz0a = vvv ; call sub_xao(mz0a)

    mzpa = vvv ; call sub_xao(mzpa)
    if(allocated(mzpa(0)%ai )) error = error+1
    if(allocated(mzpa(0)%ax )) error = error+1
    if(allocated(mzpa(0)%ac0)) error = error+1
    if(allocated(mzpa(0)%ac2)) error = error+1
    if(any(mzpa(0)%ii /= 1      )) error = error+1
    if(any(mzpa(0)%ix /= (1.,1.))) error = error+1
    if(any(mzpa(0)%ic0/= ""     )) error = error+1
    if(any(mzpa(0)%ic2/= "DI"   )) error = error+1
    if(associated(mzpa(0)%pi )) error = error+1
    if(associated(mzpa(0)%px )) error = error+1
    if(associated(mzpa(0)%pc0)) error = error+1
    if(associated(mzpa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,6
      error = 0
    end if

    mzaa = vvv ; call sub_xao(mzaa)
    if(allocated(mzaa(0)%ai )) error = error+1
    if(allocated(mzaa(0)%ax )) error = error+1
    if(allocated(mzaa(0)%ac0)) error = error+1
    if(allocated(mzaa(0)%ac2)) error = error+1
    if(any(mzaa(0)%ii /= 1      )) error = error+1
    if(any(mzaa(0)%ix /= (1.,1.))) error = error+1
    if(any(mzaa(0)%ic0/= ""     )) error = error+1
    if(any(mzaa(0)%ic2/= "DI"   )) error = error+1
    if(associated(mzaa(0)%pi )) error = error+1
    if(associated(mzaa(0)%px )) error = error+1
    if(associated(mzaa(0)%pc0)) error = error+1
    if(associated(mzaa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,7
      error = 0
    end if

    mzps = vvv ; call sub_xpso(mzps)
    if(allocated(mzps%ai )) error = error+1
    if(allocated(mzps%ax )) error = error+1
    if(allocated(mzps%ac0)) error = error+1
    if(allocated(mzps%ac2)) error = error+1
    if(any(mzps%ii /= 1      )) error = error+1
    if(any(mzps%ix /= (1.,1.))) error = error+1
    if(any(mzps%ic0/= ""     )) error = error+1
    if(any(mzps%ic2/= "DI"   )) error = error+1
    if(associated(mzps%pi )) error = error+1
    if(associated(mzps%px )) error = error+1
    if(associated(mzps%pc0)) error = error+1
    if(associated(mzps%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,8
      error = 0
    end if

    mzpa = vvv ; call sub_xpao(mzpa)
    if(allocated(mzpa(0)%ai )) error = error+1
    if(allocated(mzpa(0)%ax )) error = error+1
    if(allocated(mzpa(0)%ac0)) error = error+1
    if(allocated(mzpa(0)%ac2)) error = error+1
    if(any(mzpa(0)%ii /= 1      )) error = error+1
    if(any(mzpa(0)%ix /= (1.,1.))) error = error+1
    if(any(mzpa(0)%ic0/= ""     )) error = error+1
    if(any(mzpa(0)%ic2/= "DI"   )) error = error+1
    if(associated(mzpa(0)%pi )) error = error+1
    if(associated(mzpa(0)%px )) error = error+1
    if(associated(mzpa(0)%pc0)) error = error+1
    if(associated(mzpa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,9
      error = 0
    end if

    deallocate(mzps,mzpa)

    print *," *** pass *** "

  end program main
