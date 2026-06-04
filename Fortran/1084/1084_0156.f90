MODULE mod1
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
END MODULE

PROGRAM main
use mod1 

CLASS(first),ALLOCATABLE :: A(:,:)

type ty
  CLASS(first),ALLOCATABLE :: A2(:,:)
  CLASS(first),ALLOCATABLE :: A(:,:)
end type
type(ty)::obj, obj2

ALLOCATE(second::A(2,3))
ALLOCATE(second::obj%A(2,3))
ALLOCATE(second::obj2%A(2,3))
SELECT TYPE(X=>A)
 TYPE IS(first)
     print*,"101"
 TYPE IS(second)
 X(1,2)%i1=3
 X(1,2)%i2=X(1,2)%i1 +2
  if(X(1,2)%i1 /=3) then 
    print*,212
  endif
  SELECT TYPE(A)
    TYPE IS(first)
         print*,"101"
    TYPE IS(second)
     X(1,2)%i1 = X(1,2)%i1 + int(X(1,2)%i1)
     if(X(1,2)%i1.ne.6)print*,"191",X(1,2)%i1
     if(X(1,2)%i2.ne.5)print*,"192",X(1,2)%i2
     X(1,2)%i2 =7
     SELECT TYPE(X1=>obj%A)
       TYPE IS(first)
           print*,"101"
        TYPE IS(second)
             X1(1,2)%i1=3
             X1(1,2)%i2=X1(1,2)%i1 +2
             if(X1(1,2)%i1 /=3) then 
              print*,212
             endif
            SELECT TYPE(X=>obj2%A)
               TYPE IS(first)
                   print*,"101"
               TYPE IS(second)
                X(1,2)%i1 = X1(1,2)%i1 + int(X1(1,2)%i1)
                X(1,2)%i2 = X1(1,2)%i2
                if(X(1,2)%i1.ne.6)print*,"194",X(1,2)%i1
                if(X(1,2)%i2.ne.5)print*,"195",X(1,2)%i2
                X1(1,2)%i2 =7
            END SELECT
            if(X1(1,2)%i2.ne.7)print*,"196"
       END SELECT
   END SELECT
   if(X(1,2)%i2.ne.7)print*,"197"
END SELECT
print*,"PASS"
END 
