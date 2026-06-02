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
    class(exprt), intent(inout) :: object(:,:)
    class(*),allocatable::z(:,:)
III=2
    select type (x =>object(1:1,1:1) )
    type is (listt)
       III=1
     CLASS DEFAULT
   object(1,1)%aaa = 1
    end select
if (III.ne.1) print *,'ng'
   allocate(z,source=object)
   k=0
   select type(z)
     type is(listt)
       if (any(z(1,1)%expr/=1)) print *,1001
       if (size(z(1,1)%expr)/=2) print *,1002
       z(1,1)%expr=2
       k=1
   end select
   if (k/=1) print *,1003
   k=0
    select type (x =>object(1:1,1:1) )
    type is (listt)
       if (any(x(1,1)%expr/=1)) print *,1021
       k=1
   end select
   if (k/=1) print *,1004

  end subroutine initlist
end module particle

use particle
type(listt) :: xxx(1,1)
xxx(1,1)%aaa=2
allocate(xxx(1,1)%expr(2),source=1)
call initlist(xxx)
print *,'sngg404p : pass'
end
