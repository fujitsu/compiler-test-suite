type drv1
  integer ii
  integer jj
  class(*),allocatable :: ptr(:)
end type

type,extends(drv1) :: drv2
  integer mm
  integer nn
end type

type(drv1)::obj
INTEGER::vec(5)=(/3,2,6,3,5/)
 
allocate(drv1::obj%ptr(15))
call sub(obj%ptr(vec))
contains
  subroutine sub(dum)
    class(*):: dum(:)
    print*,'Upper bound of dum: ',UBOUND(dum)
  end subroutine sub
end

