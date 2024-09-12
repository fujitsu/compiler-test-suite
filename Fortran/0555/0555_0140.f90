implicit none 

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

class(drv1),allocatable :: ptr (:)
integer::i(3)

allocate(ptr(10),SOURCE=fun())
ptr(1:10)%ii = 10
ptr(4)%ii = 20
i=4
call sub(ptr (1:10:3),i)
contains
  subroutine sub(dum,yy)
    class(drv1):: dum(:)
    integer :: yy(:)
    
    yy(1) = dum(1)%ii
    yy(2) = dum(2)%ii
   if (yy(1) /=10) then
     print *,111
   else if (yy(2) /=20) then
     print *,112
   else
     print *,'pass'
   endif
  end subroutine sub

  function fun()
   type(drv2)::fun
   fun%kk=2.7
  end function
end

