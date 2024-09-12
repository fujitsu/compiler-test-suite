PROGRAM main

TYPE ty1
 Integer :: int1
END TYPE
 
TYPE,EXTENDS(ty1) :: ty2
 Integer :: int2
END TYPE

TYPE(ty1)::obj_ty1(4)
CLASS(*),ALLOCATABLE :: obj(:)
INTEGER::arr(10)

obj_ty1%int1=6
obj_ty1(4)%int1=1
ALLOCATE(obj,SOURCE=obj_ty1)
SELECT TYPE(obj)
 TYPE IS(ty1)
   if(obj(4)%int1 == 1) then 
     do while(obj(4)%int1 .lt. 6 )
       arr(obj%int1)=obj%int1
       obj%int1=obj%int1+1
     end do
     if(arr(3) /=3) then 
       print*,212
     else 
       print*,'pass'
     endif
   else
     print*,213
   endif
END SELECT
 
END PROGRAM
