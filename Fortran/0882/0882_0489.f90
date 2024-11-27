MODULE mods1
TYPE ty1
  INTEGER::i1=0
  TYPE(ty1),POINTER::ty1com_ty1noptr
  CLASS(ty1),POINTER::ty1com_ty1poptr
  CLASS(*),POINTER::ty1com_unlimptr
  CONTAINS
  PROCEDURE,PASS::ty1com_tbp1=>mod3_fun2
END TYPE

TYPE,EXTENDS(ty1)::ty2
  REAL::r1=0.0
END TYPE

TYPE new
  TYPE(ty1)::newcom_ty1obj
END TYPE

TYPE(ty1),SAVE::mod3_ty1obj
CLASS(ty1),POINTER,SAVE::mod3_ty1poptr

CONTAINS

INTEGER FUNCTION mod3_fun2(dmy)
CLASS(ty1)::dmy
SELECT TYPE(dmy)
  TYPE IS(ty1)
    dmy%i1=6
    mod3_fun2=dmy%i1
  TYPE IS(ty2)
    PRINT*,103
END SELECT
END FUNCTION
END MODULE

PROGRAM MAIN
USE mods1

INTEGER::arr(20),p1
TYPE(new),SAVE::main_newobj
INTEGER::i,j(20)
REAL::A(10)
CLASS(*),POINTER::main_unlimptr

ALLOCATE(ty1::main_newobj%newcom_ty1obj%ty1com_unlimptr)
main_unlimptr=>main_newobj%newcom_ty1obj%ty1com_unlimptr

arr=0
do i=1,20,2
arr(i)=i
where(arr .eq. 5)
  j=mod3_ty1obj%ty1com_tbp1()
endwhere
enddo

IF(j(5) .eq. 6) PRINT*,'pass1/3'

SELECT TYPE(main_unlimptr)
  TYPE IS(ty1)
    main_unlimptr%i1=arr(3)
  TYPE IS(ty2)
    PRINT*,401
END SELECT

SELECT TYPE(main_unlimptr)
  TYPE IS(ty1)
    if(main_unlimptr%i1==3)PRINT*,'pass2/3'
END SELECT

FORALL(p1 = 1:10)
  A(p1) = REAL (p1 + 1)
  where(A .eq. 2.0)
    A=0.0
  elsewhere
  endwhere
endforall

SELECT CASE(arr(2))
  CASE(1)
    IF(arr(2) .eq. 1 )PRINT*,403
  CASE(2)
    IF(arr(2) .eq. 2 )PRINT*,404
  CASE(0)
    SELECT TYPE(main_unlimptr)
      TYPE IS(ty1)
        i=main_unlimptr%ty1com_tbp1()
        IF(i == 6)PRINT*,'pass3/3'
    END SELECT    
END SELECT

END PROGRAM
