type drv1
  integer ii
  integer jj
  class(drv1),pointer :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

class(*),allocatable :: ptr(:)
real::i(3)
 
i=4
allocate(drv2::ptr(15))
call sub(ptr,i)
contains
  subroutine sub(dum,yy)
    class(*),ALLOCATABLE:: dum(:)
    real :: yy(3)
    print*,yy(1)
    if(allocated(dum)) then
     print*,'allocated'
    else
     print*,'not allocated'
    end if
  end subroutine sub
end

