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

    type (yyy),save        :: mys,myea(1:1),my0a(1:-1)
    type (yyy),pointer     :: myps,mypa(:)
    type (yyy),allocatable :: myaa(:)

  end module

  module mod
    contains

    subroutine sub_xso(axso)
      use typ,only: yyy
      type(yyy),intent(out) :: axso
    end subroutine

    subroutine sub_xao(axso)
      use typ,only: yyy
      type(yyy),intent(out) :: axso(0:)
    end subroutine

    subroutine sub_xpso(axso)
      use typ,only: yyy
      type(yyy),pointer :: axso
      allocate (axso)
    end subroutine

    subroutine sub_xpao(axso)
      use typ,only: yyy
      type(yyy),pointer :: axso(:)
      allocate (axso(0:0))
    end subroutine

  end module

  program main

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

    allocate(myps,mypa(0:0),myaa(0:0))

    mys  = vvv ; call sub_xso(mys)
    if(allocated(mys %ai )) error = error+1
    if(allocated(mys %ax )) error = error+1
    if(allocated(mys %ac0)) error = error+1
    if(allocated(mys %ac2)) error = error+1
    if(associated(mys %pi )) error = error+1
    if(associated(mys %px )) error = error+1
    if(associated(mys %pc0)) error = error+1
    if(associated(mys %pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,1
      error = 0
    end if

    myea = vvv ; call sub_xso(myea(1))
    if(allocated(myea(1)%ai )) error = error+1
    if(allocated(myea(1)%ax )) error = error+1
    if(allocated(myea(1)%ac0)) error = error+1
    if(allocated(myea(1)%ac2)) error = error+1
    if(associated(myea(1)%pi )) error = error+1
    if(associated(myea(1)%px )) error = error+1
    if(associated(myea(1)%pc0)) error = error+1
    if(associated(myea(1)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,2
      error = 0
    end if

    myps = vvv ; call sub_xso(myps)
    if(allocated(myps%ai )) error = error+1
    if(allocated(myps%ax )) error = error+1
    if(allocated(myps%ac0)) error = error+1
    if(allocated(myps%ac2)) error = error+1
    if(associated(myps%pi )) error = error+1
    if(associated(myps%px )) error = error+1
    if(associated(myps%pc0)) error = error+1
    if(associated(myps%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,3
      error = 0
    end if

    mypa = vvv ; call sub_xso(mypa(0))
    if(allocated(mypa(0)%ai )) error = error+1
    if(allocated(mypa(0)%ax )) error = error+1
    if(allocated(mypa(0)%ac0)) error = error+1
    if(allocated(mypa(0)%ac2)) error = error+1
    if(associated(mypa(0)%pi )) error = error+1
    if(associated(mypa(0)%px )) error = error+1
    if(associated(mypa(0)%pc0)) error = error+1
    if(associated(mypa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,4
      error = 0
    end if

    myaa = vvv ; call sub_xso(myaa(0))
    if(allocated(myaa(0)%ai )) error = error+1
    if(allocated(myaa(0)%ax )) error = error+1
    if(allocated(myaa(0)%ac0)) error = error+1
    if(allocated(myaa(0)%ac2)) error = error+1
    if(associated(myaa(0)%pi )) error = error+1
    if(associated(myaa(0)%px )) error = error+1
    if(associated(myaa(0)%pc0)) error = error+1
    if(associated(myaa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,4
      error = 0
    end if

    myea = vvv ; call sub_xao(myea)
    if(allocated(myea(1)%ai )) error = error+1
    if(allocated(myea(1)%ax )) error = error+1
    if(allocated(myea(1)%ac0)) error = error+1
    if(allocated(myea(1)%ac2)) error = error+1
    if(associated(myea(1)%pi )) error = error+1
    if(associated(myea(1)%px )) error = error+1
    if(associated(myea(1)%pc0)) error = error+1
    if(associated(myea(1)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,5
      error = 0
    end if

    my0a = vvv ; call sub_xao(my0a)

    mypa = vvv ; call sub_xao(mypa)
    if(allocated(mypa(0)%ai )) error = error+1
    if(allocated(mypa(0)%ax )) error = error+1
    if(allocated(mypa(0)%ac0)) error = error+1
    if(allocated(mypa(0)%ac2)) error = error+1
    if(associated(mypa(0)%pi )) error = error+1
    if(associated(mypa(0)%px )) error = error+1
    if(associated(mypa(0)%pc0)) error = error+1
    if(associated(mypa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,6
      error = 0
    end if

    myaa = vvv ; call sub_xao(myaa)
    if(allocated(myaa(0)%ai )) error = error+1
    if(allocated(myaa(0)%ax )) error = error+1
    if(allocated(myaa(0)%ac0)) error = error+1
    if(allocated(myaa(0)%ac2)) error = error+1
    if(associated(myaa(0)%pi )) error = error+1
    if(associated(myaa(0)%px )) error = error+1
    if(associated(myaa(0)%pc0)) error = error+1
    if(associated(myaa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,7
      error = 0
    end if

    myps = vvv ; call sub_xpso(myps)
    if(allocated(myps%ai )) error = error+1
    if(allocated(myps%ax )) error = error+1
    if(allocated(myps%ac0)) error = error+1
    if(allocated(myps%ac2)) error = error+1
    if(associated(myps%pi )) error = error+1
    if(associated(myps%px )) error = error+1
    if(associated(myps%pc0)) error = error+1
    if(associated(myps%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,8
      error = 0
    end if

    mypa = vvv ; call sub_xpao(mypa)
    if(allocated(mypa(0)%ai )) error = error+1
    if(allocated(mypa(0)%ax )) error = error+1
    if(allocated(mypa(0)%ac0)) error = error+1
    if(allocated(mypa(0)%ac2)) error = error+1
    if(associated(mypa(0)%pi )) error = error+1
    if(associated(mypa(0)%px )) error = error+1
    if(associated(mypa(0)%pc0)) error = error+1
    if(associated(mypa(0)%pc2)) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,9
      error = 0
    end if

    deallocate(myps,mypa)

    print *," *** pass *** "

  end program main
