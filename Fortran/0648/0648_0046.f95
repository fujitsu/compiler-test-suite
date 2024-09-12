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
    subroutine sub_xsi(axsi)
      use typ,only: yyy
      type(yyy),intent(in) :: axsi

      integer :: error = 0

      if(allocated(axsi%ai )) error = error+1
      if(allocated(axsi%ax )) error = error+1
      if(allocated(axsi%ac0)) error = error+1
      if(allocated(axsi%ac2)) error = error+1

      if(associated(axsi%pi )) error = error+1
      if(associated(axsi%px )) error = error+1
      if(associated(axsi%pc0)) error = error+1
      if(associated(axsi%pc2)) error = error+1

      if (error /= 0) then
        print *, " +++ ng +++ ",error,"sub_xsi"
        error = 0
      end if

    end subroutine

    subroutine sub_xai(axsi)
      use typ,only: yyy
      type(yyy),intent(in) :: axsi(0:)

      integer :: error = 0

      if (size(axsi) /= 0) then
        if(allocated(axsi(0)%ai )) error = error+1
        if(allocated(axsi(0)%ax )) error = error+1
        if(allocated(axsi(0)%ac0)) error = error+1
        if(allocated(axsi(0)%ac2)) error = error+1

        if(associated(axsi(0)%pi )) error = error+1
        if(associated(axsi(0)%px )) error = error+1
        if(associated(axsi(0)%pc0)) error = error+1
        if(associated(axsi(0)%pc2)) error = error+1
      end if

      if (error /= 0) then
        print *, " +++ ng +++ ",error,"sub_xai"
        error = 0
      end if

    end subroutine

    subroutine sub_xpsi(axsi)
      use typ,only: yyy
      type(yyy),pointer :: axsi

      integer :: error = 0

      if(allocated(axsi%ai )) error = error+1
      if(allocated(axsi%ax )) error = error+1
      if(allocated(axsi%ac0)) error = error+1
      if(allocated(axsi%ac2)) error = error+1

      if(associated(axsi%pi )) error = error+1
      if(associated(axsi%px )) error = error+1
      if(associated(axsi%pc0)) error = error+1
      if(associated(axsi%pc2)) error = error+1

      if (error /= 0) then
        print *, " +++ ng +++ ",error,"sub_xpsi"
        error = 0
      end if

    end subroutine

    subroutine sub_xpai(axsi)
      use typ,only: yyy
      type(yyy),pointer :: axsi(:)

      integer :: error = 0

      if (size(axsi) /= 0) then
        if(allocated(axsi(0)%ai )) error = error+1
        if(allocated(axsi(0)%ax )) error = error+1
        if(allocated(axsi(0)%ac0)) error = error+1
        if(allocated(axsi(0)%ac2)) error = error+1

        if(associated(axsi(0)%pi )) error = error+1
        if(associated(axsi(0)%px )) error = error+1
        if(associated(axsi(0)%pc0)) error = error+1
        if(associated(axsi(0)%pc2)) error = error+1
      end if

      if (error /= 0) then
        print *, " +++ ng +++ ",error,"sub_xpai"
        error = 0
      end if

    end subroutine

    subroutine sub_xaai(axsi)
      use typ,only: yyy
      type(yyy),allocatable,intent(in) :: axsi(:)

      integer :: error = 0

      if (size(axsi) /= 0) then
        if(allocated(axsi(0)%ai )) error = error+1
        if(allocated(axsi(0)%ax )) error = error+1
        if(allocated(axsi(0)%ac0)) error = error+1
        if(allocated(axsi(0)%ac2)) error = error+1

        if(associated(axsi(0)%pi )) error = error+1
        if(associated(axsi(0)%px )) error = error+1
        if(associated(axsi(0)%pc0)) error = error+1
        if(associated(axsi(0)%pc2)) error = error+1
      end if

      if (error /= 0) then
        print *, " +++ ng +++ ",error,"sub_xaai"
        error = 0
      end if

    end subroutine

  end module

  program main

    use typ
    use mod

    allocate(myps,mypa(0:0),myaa(0:0))
    call sub_xsi(mys)
    call sub_xsi(myea(1))
    call sub_xsi(myps)
    call sub_xsi(mypa(0))
    call sub_xsi(myaa(0))
    call sub_xsi(yyy(null(),null(),null(),null(), &
        &            null(),null(),null(),null()))
    call sub_xsi(yyy(mys%ai,mys%ax,mys%ac0,mys%ac2, &
        &            mys%pi,mys%px,mys%pc0,mys%pc2))

    call sub_xai((/mys/))
    call sub_xai(myea)
    call sub_xai(my0a)
    call sub_xai((/myps/))
    call sub_xai(mypa)
    call sub_xai(myaa)
    call sub_xai((/yyy(null(),null(),null(),null(), &
        &              null(),null(),null(),null())/))
    call sub_xai((/yyy(mys%ai,mys%ax,mys%ac0,mys%ac2, &
        &              mys%pi,mys%px,mys%pc0,mys%pc2)/))

    call sub_xpsi(myps)

    call sub_xpai(mypa)

    call sub_xaai(myaa)

    deallocate(myps,mypa,myaa)

    print *," *** pass *** "

  end program main
