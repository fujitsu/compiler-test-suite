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



integer,pointer::arr(:,:),arr2(:),arr3
integer::s1,s2(5),s3(5,5)
        allocate(arr(5,5))
        allocate(arr2(5))
        allocate(arr3)

call gen(s1)        
call gen(s2)        
call gen(s3)
call gen(arr)
call gen(arr2)        
call gen(arr3)        
print*,"PASS"
        end
