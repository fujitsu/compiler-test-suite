type drv1
  integer ii
  integer jj
  class(*),pointer :: ptr(:,:,:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

type(drv1)::obj
type(drv2),target :: trgt(3,3,3)
 
trgt%ii = 10
trgt(3,3,3)%ii = 20
obj%ptr=>trgt
call sub(obj%ptr)
contains
  subroutine sub(dum)
    class(*),POINTER:: dum(:,:,:)
    if(associated(dum)) then
     print*,'associated'
    else
     print*,'not associated'
    endif
  end subroutine sub
end

