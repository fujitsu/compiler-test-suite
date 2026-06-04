PROGRAM main

TYPE ty1
 Integer :: int1
 Integer :: int3(2)
END TYPE
 
TYPE,EXTENDS(ty1) :: ty2
 Integer :: int2
END TYPE

TYPE(ty1)::obj_ty1
CLASS(*),ALLOCATABLE :: obj
CLASS(*),ALLOCATABLE :: obj2(:)
INTEGER::arr(5)

obj_ty1%int1=1
obj_ty1%int3=1
ALLOCATE(obj,SOURCE=obj_ty1)
ALLOCATE(obj2(5),SOURCE=obj_ty1)

SELECT TYPE(A=>obj)
 TYPE IS(ty1)
   if(A%int1 .EQ. 1) then 
     do while(A%int1 .lt. 6 )
       arr(A%int1)=A%int1
       A%int1=A%int1+1
     end do
     if(arr(3) /=3) then 
       print*,212
     else 
       print*,'pass'
     endif
   else
     print*,213
   endif
   SELECT TYPE(A=>obj)
     TYPE IS(ty1)
      if(A%int1 .NE. 6) print*,"101"
     TYPE IS(ty2)
       print*,316
   END SELECT
 TYPE IS(ty2)
     print*,216
END SELECT
SELECT TYPE(A=>obj2)
 TYPE IS(ty1)
   if(A(1)%int3(1) .EQ. 1) then 
     do while(A(1)%int3(1) .lt. 6 )
       arr(A(1)%int3(1))=A(1)%int3(1)
       A(1)%int3(1)=A(1)%int3(1)+1
     end do
     if(arr(3) /=3) then 
       print*,212
     endif
   else
     print*,213
   endif
 TYPE IS(ty2)
     print*,216
END SELECT
END PROGRAM
