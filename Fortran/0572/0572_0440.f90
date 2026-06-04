MODULE M
interface gen
module procedure sub1
end interface

contains
SUBROUTINE sub1(aa)        
   IMPLICIT NONE       
      integer::aa(..)     
    if(kind(aa) /=4)print*,101         
 END SUBROUTINE sub1

        
End module M

use M



integer,pointer::prr(:,:),prr2(:),prr3
integer,allocatable::arr(:,:),arr2(:),arr3
        allocate(arr(5,5),prr(5,5))
        allocate(arr2(5),prr2(5))
        allocate(arr3,prr3)

call sub4(arr,prr)        
call sub5(arr2,prr2)        
call sub6(arr3,prr3)       
print*,"PASS"
contains
subroutine sub4(a,b)
        integer::a(..),b(..)
call gen(a)        
call gen(b)
end subroutine         
subroutine sub5(a,b)
        integer::a(..),b(..)
call gen(a)        
call gen(b)
end subroutine         
subroutine sub6(a,b)
        integer::a(..),b(..)
call gen(a)        
call gen(b)
end subroutine         
        end
