module m
  type, public :: it 
    character (len = 20) :: k
    integer, dimension(3) :: ata = (/ 0, 1, 999 /)
  end type it
  type, private :: bt
    type (nt), pointer :: nnNP => null( )
  end type bt
  type, private :: nt
    type (it) :: i
    type (bt), dimension(:), pointer :: brray
  end type nt
  type (bt), dimension(:), pointer, private :: rav
contains
  subroutine loo
  contains
    subroutine nser( )
      type (nt), pointer :: ew
      allocate( ew )
    end subroutine nser
  end subroutine loo
  subroutine rint( )
    type(it) :: empi
      empi = it('1',1)
  end subroutine rint
end module m
use m
call loo
print *,'pass'
end

