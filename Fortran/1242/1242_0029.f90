module particle
  type, abstract :: exprt
     integer :: aaa=1
  end type exprt
  type :: prt_exprt
     !class(exprt), allocatable :: x
     integer :: x
  end type prt_exprt
  type, extends (exprt) :: listt
     integer, dimension(:), allocatable :: expr
  end type listt
contains

  subroutine initlist (object)
    class(prt_exprt), intent(inout) :: object(1,1)
type (listt),allocatable ::listta
III=2
    select type (x =>( (object(1:1,1:size((/(int(1),i=int(1),int(1))/))))) )
    type is (prt_exprt)
       III=1
     CLASS DEFAULT
   object(1,1)%x = 1!object(1,1)%x
    !type is (listt)
    end select
if (III.ne.1) print *,'ng'
  end subroutine initlist
end module particle

use particle
type(prt_exprt) :: xxx(1,1)
xxx(1,1)%x=1
call initlist(xxx)
print *,'pass'
end
