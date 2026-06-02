TYPE T1
REAL C
END TYPE
 TYPE, EXTENDS(T1) :: T2
 END TYPE
 CLASS(T1), POINTER :: P, Q, R
 ALLOCATE(P, Q)
 ALLOCATE(T2 :: R)
call sub(P,Q,R)        
        contains
        subroutine sub(x,y,z)
        class(*) :: x(..),y(..),z(..)
        if(same_type_as(x,y) .neqv. .true.) print*,"101"
        if(same_type_as(x,z) .neqv. .false.) print*,"102"
        print*, "PASS"
        end subroutine 
end

