PROGRAM main

TYPE ty1
 Integer :: int1
 Integer :: int3
END TYPE
 
TYPE,EXTENDS(ty1) :: ty2
 Integer :: int2
END TYPE

TYPE(ty1)::obj_ty1
CLASS(*),ALLOCATABLE :: obj
INTEGER::arr(5)

obj_ty1%int1=1
obj_ty1%int3=1
ALLOCATE(obj,SOURCE=obj_ty1)
 SELECT TYPE(A=>obj)
 TYPE IS(ty1)
   if(A%int1 .EQ. 1) then 
     FORALL (i=A%int3:A%int3 +4)
       arr(i)=A%int1 + i -1
       A%int1=A%int1+ i -1
     end FORALL
     if(arr(3) /=3) then 
       print*,212,arr(3)
     else 
       print*,'pass'
     endif
   else
     print*,213
   endif
   SELECT TYPE(A=>obj)
     TYPE IS(ty1)
      if(A%int1 .NE. 5) print*,"101"
     TYPE IS(ty2)
       print*,316
   END SELECT
 TYPE IS(ty2)
     print*,216
END SELECT
 
END PROGRAM
