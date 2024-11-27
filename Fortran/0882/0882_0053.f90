type drv1
  integer ii
  integer jj
  class(*),allocatable :: ptr(:,:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

type(drv1)::obj
 
allocate(drv2::obj%ptr(6,6))
call sub(obj%ptr)
contains
  subroutine sub(dum)
    class(*):: dum(3,*)
    print*,'Size: ',size(dum,1),' Ubound: ',UBOUND(dum,1)
  end subroutine sub
end

