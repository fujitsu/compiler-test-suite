
MODULE m

  TYPE t
     integer :: v
   CONTAINS
     FINAL :: finalize_t1v, finalize_t2e
  END TYPE t
  
  integer:: f1=0,f2=0,f3=0
  
  type tt
     integer z(2)
     TYPE(t) :: a
     TYPE(t) :: b(2)
     TYPE(t) :: c(2,2,2)
     TYPE(t) :: d(2,2)
     TYPE(t) :: e(2,2,2,2)
  end type tt
  
  class(tt),allocatable:: var
  
CONTAINS
  SUBROUTINE finalize_t1v(x)
    TYPE(t) x(:)
    f2=f2+1
  END SUBROUTINE finalize_t1v
  
  ELEMENTAL SUBROUTINE finalize_t2e(x)
    TYPE(t),INTENT(INOUT) :: x
    
    interface
       pure subroutine su(v)
         integer,intent(in)::v
       end subroutine su
    end interface
    
    call su(x%v)
    
  END SUBROUTINE finalize_t2e
  
END MODULE m


SUBROUTINE example
  
  USE m
  allocate (var )
  var%a%v=1
  var%b%v=[2,3]
  var%c%v=reshape([4,5,6,7,8,9,10,11],[2,2,2])
  var%d%v=reshape([12,13,14,15],[2,2])
  var%e%v=reshape([16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],[2,2,2,2])
print *,'pass'
  
END SUBROUTINE example

use m

call example

deallocate (var )

end program

subroutine su(v)
  use m
  integer,intent(in)::v
  f3=f3+1
end subroutine su
