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

    subroutine sub_xso(axso)
      use typ,only: xxx
      type(xxx),intent(out) :: axso
    end subroutine

    subroutine sub_xao(axso)
      use typ,only: xxx
      type(xxx),intent(out) :: axso(0:)
    end subroutine

    subroutine sub_xpso(axso)
      use typ,only: xxx
      type(xxx),pointer :: axso
      allocate (axso)
    end subroutine

    subroutine sub_xpao(axso)
      use typ,only: xxx
      type(xxx),pointer :: axso(:)
      allocate (axso(0:0))
    end subroutine

  end module

  program main

    use typ
    use mod

    integer :: error = 0

    type(xxx) :: vvv
    vvv = xxx((/555/),(/(3.14,3.14)/),(/""/),(/"VL"/), &
         &    (/555/),mxs%ix,reshape((/("",i=1,9)/),(/9/)),(/"VL"/))

    allocate(mxps,mxpa(0:0),mxaa(0:0))

    mxs  = vvv ; call sub_xso(mxs)
    if(allocated(mxs %ai )) error = error+1
    if(allocated(mxs %ax )) error = error+1
    if(allocated(mxs %ac0)) error = error+1
    if(allocated(mxs %ac2)) error = error+1
    if(any(mxs %ii /= 1      )) error = error+1
    if(any(mxs %ix /= (1.,1.))) error = error+1
    if(any(mxs %ic0/= ""     )) error = error+1
    if(any(mxs %ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,1
      error = 0
    end if

    mxea = vvv ; call sub_xso(mxea(1))
    if(allocated(mxea(1)%ai )) error = error+1
    if(allocated(mxea(1)%ax )) error = error+1
    if(allocated(mxea(1)%ac0)) error = error+1
    if(allocated(mxea(1)%ac2)) error = error+1
    if(any(mxea(1)%ii /= 1      )) error = error+1
    if(any(mxea(1)%ix /= (1.,1.))) error = error+1
    if(any(mxea(1)%ic0/= ""     )) error = error+1
    if(any(mxea(1)%ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,2
      error = 0
    end if

    mxps = vvv ; call sub_xso(mxps)
    if(allocated(mxps%ai )) error = error+1
    if(allocated(mxps%ax )) error = error+1
    if(allocated(mxps%ac0)) error = error+1
    if(allocated(mxps%ac2)) error = error+1
    if(any(mxps%ii /= 1      )) error = error+1
    if(any(mxps%ix /= (1.,1.))) error = error+1
    if(any(mxps%ic0/= ""     )) error = error+1
    if(any(mxps%ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,3
      error = 0
    end if

    mxpa = vvv ; call sub_xso(mxpa(0))
    if(allocated(mxpa(0)%ai )) error = error+1
    if(allocated(mxpa(0)%ax )) error = error+1
    if(allocated(mxpa(0)%ac0)) error = error+1
    if(allocated(mxpa(0)%ac2)) error = error+1
    if(any(mxpa(0)%ii /= 1      )) error = error+1
    if(any(mxpa(0)%ix /= (1.,1.))) error = error+1
    if(any(mxpa(0)%ic0/= ""     )) error = error+1
    if(any(mxpa(0)%ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,4
      error = 0
    end if

    mxaa = vvv ; call sub_xso(mxaa(0))
    if(allocated(mxaa(0)%ai )) error = error+1
    if(allocated(mxaa(0)%ax )) error = error+1
    if(allocated(mxaa(0)%ac0)) error = error+1
    if(allocated(mxaa(0)%ac2)) error = error+1
    if(any(mxaa(0)%ii /= 1      )) error = error+1
    if(any(mxaa(0)%ix /= (1.,1.))) error = error+1
    if(any(mxaa(0)%ic0/= ""     )) error = error+1
    if(any(mxaa(0)%ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,4
      error = 0
    end if

    mxea = vvv ; call sub_xao(mxea)
    if(allocated(mxea(1)%ai )) error = error+1
    if(allocated(mxea(1)%ax )) error = error+1
    if(allocated(mxea(1)%ac0)) error = error+1
    if(allocated(mxea(1)%ac2)) error = error+1
    if(any(mxea(1)%ii /= 1      )) error = error+1
    if(any(mxea(1)%ix /= (1.,1.))) error = error+1
    if(any(mxea(1)%ic0/= ""     )) error = error+1
    if(any(mxea(1)%ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,5
      error = 0
    end if

    mx0a = vvv ; call sub_xao(mx0a)

    mxpa = vvv ; call sub_xao(mxpa)
    if(allocated(mxpa(0)%ai )) error = error+1
    if(allocated(mxpa(0)%ax )) error = error+1
    if(allocated(mxpa(0)%ac0)) error = error+1
    if(allocated(mxpa(0)%ac2)) error = error+1
    if(any(mxpa(0)%ii /= 1      )) error = error+1
    if(any(mxpa(0)%ix /= (1.,1.))) error = error+1
    if(any(mxpa(0)%ic0/= ""     )) error = error+1
    if(any(mxpa(0)%ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,6
      error = 0
    end if

    mxaa = vvv ; call sub_xao(mxaa)
    if(allocated(mxaa(0)%ai )) error = error+1
    if(allocated(mxaa(0)%ax )) error = error+1
    if(allocated(mxaa(0)%ac0)) error = error+1
    if(allocated(mxaa(0)%ac2)) error = error+1
    if(any(mxaa(0)%ii /= 1      )) error = error+1
    if(any(mxaa(0)%ix /= (1.,1.))) error = error+1
    if(any(mxaa(0)%ic0/= ""     )) error = error+1
    if(any(mxaa(0)%ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,7
      error = 0
    end if

    mxps = vvv ; call sub_xpso(mxps)
    if(allocated(mxps%ai )) error = error+1
    if(allocated(mxps%ax )) error = error+1
    if(allocated(mxps%ac0)) error = error+1
    if(allocated(mxps%ac2)) error = error+1
    if(any(mxps%ii /= 1      )) error = error+1
    if(any(mxps%ix /= (1.,1.))) error = error+1
    if(any(mxps%ic0/= ""     )) error = error+1
    if(any(mxps%ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,8
      error = 0
    end if

    mxpa = vvv ; call sub_xpao(mxpa)
    if(allocated(mxpa(0)%ai )) error = error+1
    if(allocated(mxpa(0)%ax )) error = error+1
    if(allocated(mxpa(0)%ac0)) error = error+1
    if(allocated(mxpa(0)%ac2)) error = error+1
    if(any(mxpa(0)%ii /= 1      )) error = error+1
    if(any(mxpa(0)%ix /= (1.,1.))) error = error+1
    if(any(mxpa(0)%ic0/= ""     )) error = error+1
    if(any(mxpa(0)%ic2/= "DI"   )) error = error+1
    if (error /= 0) then
      print *, " +++ ng +++ ",error,9
      error = 0
    end if

    deallocate(mxps,mxpa)

    print *," *** pass *** "

  end program main
