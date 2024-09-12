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

    type (xxx),save        :: mxs,mxea(1:1),mx0a(1:-1)
    type (xxx),pointer     :: mxps,mxpa(:)
    type (xxx),allocatable :: mxaa(:)

  end module

  module mod
    contains
    subroutine sub_xsi(axsi)
      use typ,only: xxx
      type(xxx),intent(in) :: axsi

      integer :: error = 0

      if(allocated(axsi%ai )) error = error+1
      if(allocated(axsi%ax )) error = error+1
      if(allocated(axsi%ac0)) error = error+1
      if(allocated(axsi%ac2)) error = error+1

      if(any(axsi%ii /= 1      )) error = error+1
      if(any(axsi%ix /= (1.,1.))) error = error+1
      if(any(axsi%ic0/= ""     )) error = error+1
      if(any(axsi%ic2/= "DI"   )) error = error+1

      if (error /= 0) then
        print *, " +++ ng +++ ",error,"sub_xsi"
        error = 0
      end if

    end subroutine

    subroutine sub_xai(axsi)
      use typ,only: xxx
      type(xxx),intent(in) :: axsi(0:)

      integer :: error = 0

      if (size(axsi) /= 0) then
        if(allocated(axsi(0)%ai )) error = error+1
        if(allocated(axsi(0)%ax )) error = error+1
        if(allocated(axsi(0)%ac0)) error = error+1
        if(allocated(axsi(0)%ac2)) error = error+1

        if(any(axsi(0)%ii /= 1      )) error = error+1
        if(any(axsi(0)%ix /= (1.,1.))) error = error+1
        if(any(axsi(0)%ic0/= ""     )) error = error+1
        if(any(axsi(0)%ic2/= "DI"   )) error = error+1
      end if

      if (error /= 0) then
        print *, " +++ ng +++ ",error,"sub_xai"
        error = 0
      end if

    end subroutine

    subroutine sub_xpsi(axsi)
      use typ,only: xxx
      type(xxx),pointer :: axsi

      integer :: error = 0

      if(allocated(axsi%ai )) error = error+1
      if(allocated(axsi%ax )) error = error+1
      if(allocated(axsi%ac0)) error = error+1
      if(allocated(axsi%ac2)) error = error+1

      if(any(axsi%ii /= 1      )) error = error+1
      if(any(axsi%ix /= (1.,1.))) error = error+1
      if(any(axsi%ic0/= ""     )) error = error+1
      if(any(axsi%ic2/= "DI"   )) error = error+1

      if (error /= 0) then
        print *, " +++ ng +++ ",error,"sub_xpsi"
        error = 0
      end if

    end subroutine

    subroutine sub_xpai(axsi)
      use typ,only: xxx
      type(xxx),pointer :: axsi(:)

      integer :: error = 0

      if (size(axsi) /= 0) then
        if(allocated(axsi(0)%ai )) error = error+1
        if(allocated(axsi(0)%ax )) error = error+1
        if(allocated(axsi(0)%ac0)) error = error+1
        if(allocated(axsi(0)%ac2)) error = error+1

        if(any(axsi(0)%ii /= 1      )) error = error+1
        if(any(axsi(0)%ix /= (1.,1.))) error = error+1
        if(any(axsi(0)%ic0/= ""     )) error = error+1
        if(any(axsi(0)%ic2/= "DI"   )) error = error+1
      end if

      if (error /= 0) then
        print *, " +++ ng +++ ",error,"sub_xpai"
        error = 0
      end if

    end subroutine

    subroutine sub_xaai(axsi)
      use typ,only: xxx
      type(xxx),allocatable,intent(in) :: axsi(:)

      integer :: error = 0

      if (size(axsi) /= 0) then
        if(allocated(axsi(0)%ai )) error = error+1
        if(allocated(axsi(0)%ax )) error = error+1
        if(allocated(axsi(0)%ac0)) error = error+1
        if(allocated(axsi(0)%ac2)) error = error+1

        if(any(axsi(0)%ii /= 1      )) error = error+1
        if(any(axsi(0)%ix /= (1.,1.))) error = error+1
        if(any(axsi(0)%ic0/= ""     )) error = error+1
        if(any(axsi(0)%ic2/= "DI"   )) error = error+1
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

    allocate(mxps,mxpa(0:0),mxaa(0:0))
    call sub_xsi(mxs)
    call sub_xsi(mxea(1))
    call sub_xsi(mxps)
    call sub_xsi(mxpa(0))
    call sub_xsi(mxaa(0))
    call sub_xsi(xxx(null(),null(),null(),null(), &
        &            mxs%ii,mxs%ix,mxs%ic0,mxs%ic2))
    call sub_xsi(xxx(mxs%ai,mxs%ax,mxs%ac0,mxs%ac2, &
        &            mxs%ii,mxs%ix,mxs%ic0,mxs%ic2))

    call sub_xai((/mxs/))
    call sub_xai(mxea)
    call sub_xai(mx0a)
    call sub_xai((/mxps/))
    call sub_xai(mxpa)
    call sub_xai(mxaa)
    call sub_xai((/xxx(null(),null(),null(),null(), &
        &              mxs%ii,mxs%ix,mxs%ic0,mxs%ic2)/))
    call sub_xai((/xxx(mxs%ai,mxs%ax,mxs%ac0,mxs%ac2, &
        &              mxs%ii,mxs%ix,mxs%ic0,mxs%ic2)/))

    call sub_xpsi(mxps)

    call sub_xpai(mxpa)

    call sub_xaai(mxaa)

    deallocate(mxps,mxpa,mxaa)

    print *," *** pass *** "

  end program main
