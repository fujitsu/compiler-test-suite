IMPLICIT NONE

type drv1
  integer::ii = 0
  real::jj    = 0.0
end type

type,extends(drv1) :: drv2
  real::kk    = 0.0
end type

type,extends(drv2) :: drv3
  type(drv2)::drv2_obj
end type

class(drv1),allocatable :: ptr(:)
integer::i(3)
type(drv3)::drv3_obj

drv3_obj%kk=3.5 
allocate(ptr(10),SOURCE=drv3_obj%drv2_obj)
ptr(1:10)%ii = 10
ptr(4)%ii = 20
call sub(ptr(1:10:3),i)
contains
  subroutine sub(dum,yy)
    class(drv1):: dum(:)
    integer :: yy(2)
    yy(1) = dum(1)%ii
    yy(2) = dum(2)%ii
    if (yy(1) /=10) then 
      print *,'111'
    else if (yy(2) /=20) then 
      print *,'112'
    else  
      print *,'pass'
    endif
  end subroutine sub
end

