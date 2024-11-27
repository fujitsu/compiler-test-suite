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
 
ALLOCATE(drv1::obj%ptr(2,5))
call sub(obj%ptr)
contains
  subroutine sub(dum)
    class(*),allocatable:: dum(:,:)
    if(allocated(dum)) then
     print*,'allocated'
    else
     print*,'not allocated'
    end if
  end subroutine sub
end

