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
    subroutine sub_xsi(axsi)
      use typ,only: zzz
      type(zzz),intent(in) :: axsi

      integer :: error = 0

      if(allocated(axsi%ai )) error = error+1
      if(allocated(axsi%ax )) error = error+1
      if(allocated(axsi%ac0)) error = error+1
      if(allocated(axsi%ac2)) error = error+1

      if(any(axsi%ii /= 1      )) error = error+1
      if(any(axsi%ix /= (1.,1.))) error = error+1
      if(any(axsi%ic0/= ""     )) error = error+1
      if(any(axsi%ic2/= "DI"   )) error = error+1

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
      use typ,only: zzz
      type(zzz),intent(in) :: axsi(0:)

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
      use typ,only: zzz
      type(zzz),pointer :: axsi

      integer :: error = 0

      if(allocated(axsi%ai )) error = error+1
      if(allocated(axsi%ax )) error = error+1
      if(allocated(axsi%ac0)) error = error+1
      if(allocated(axsi%ac2)) error = error+1

      if(any(axsi%ii /= 1      )) error = error+1
      if(any(axsi%ix /= (1.,1.))) error = error+1
      if(any(axsi%ic0/= ""     )) error = error+1
      if(any(axsi%ic2/= "DI"   )) error = error+1

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
      use typ,only: zzz
      type(zzz),pointer :: axsi(:)

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
      use typ,only: zzz
      type(zzz),allocatable,intent(in) :: axsi(:)

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

    allocate(mzps,mzpa(0:0),mzaa(0:0))
    call sub_xsi(mzs)
    call sub_xsi(mzea(1))
    call sub_xsi(mzps)
    call sub_xsi(mzpa(0))
    call sub_xsi(mzaa(0))
    call sub_xsi(zzz(null(),null(),null(),null(), &
        &            mzs%ii,mzs%ix,mzs%ic0,mzs%ic2, &
        &            null(),null(),null(),null()))
    call sub_xsi(zzz(mzs%ai,mzs%ax,mzs%ac0,mzs%ac2, &
        &            mzs%ii,mzs%ix,mzs%ic0,mzs%ic2, &
        &            mzs%pi,mzs%px,mzs%pc0,mzs%pc2))

    call sub_xai((/mzs/))
    call sub_xai(mzea)
    call sub_xai(mz0a)
    call sub_xai((/mzps/))
    call sub_xai(mzpa)
    call sub_xai(mzaa)
    call sub_xai((/zzz(null(),null(),null(),null(), &
        &              mzs%ii,mzs%ix,mzs%ic0,mzs%ic2, &
        &              null(),null(),null(),null())/))
    call sub_xai((/zzz(mzs%ai,mzs%ax,mzs%ac0,mzs%ac2, &
        &              mzs%ii,mzs%ix,mzs%ic0,mzs%ic2, &
        &              mzs%pi,mzs%px,mzs%pc0,mzs%pc2)/))

    call sub_xpsi(mzps)

    call sub_xpai(mzpa)

    call sub_xaai(mzaa)

    deallocate(mzps,mzpa,mzaa)

    print *," *** pass *** "

  end program main
