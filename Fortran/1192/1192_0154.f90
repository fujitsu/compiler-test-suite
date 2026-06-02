module particle
  type, abstract :: exprt
     integer :: aaa=1
  end type exprt
  type :: prt_exprt
     integer :: x
  end type prt_exprt
  type, extends (exprt) :: listt
     integer, dimension(:), allocatable :: expr
  end type listt
contains

  subroutine initlist (object)
    class(exprt), intent(inout) :: object(1,1)
III=2
    select type (x =>object(1:1,1:1) )
    type is (listt)
       III=1
     CLASS DEFAULT
   object(1,1)%aaa = 1
    end select
if (III.ne.1) print *,'ng'
  end subroutine initlist
end module particle

use particle
type(listt) :: xxx(1,1)
xxx(1,1)%aaa=2
call initlist(xxx)
print *,'sngg403p : pass'
end
