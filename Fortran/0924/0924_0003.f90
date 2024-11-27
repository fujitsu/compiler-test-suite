MODULE M
        REAL (KIND =2) :: A
        TYPE T1
         REAL (KIND =2) :: A
        END TYPE
        TYPE TT
         REAL (KIND =4) :: AA
        END TYPE
   END MODULE  
USE M
       TYPE T2
         TYPE(T1)::CMP
       END TYPE 
      TYPE(T1)::OBJ1
      TYPE(T2)::OBJ2(2)
      TYPE(T2)::OBJ3
        REAL (KIND =2) :: ARR(5,5)
         TYPE(TT)::CCC
         WRITE(*,FMT=*) A
         WRITE(*,FMT=*) FUN()
         WRITE(*,FMT=*) OBJ1
         WRITE(*,FMT=*) OBJ3
         WRITE(*,FMT=*) OBJ1%A
         WRITE(*,FMT=*) OBJ2%CMP
         WRITE(*,FMT=*) OBJ2(1)%CMP
         WRITE(*,FMT=*) ARR(1,1)
         WRITE(*,FMT=*) OBJ2(1)
         WRITE(*,*)[1.5_2,2.5_2]
         WRITE(*,*)[T1(1.5_2),T1(2.5_2)]
         WRITE(*,*)T1(2.4_2)
         WRITE(*,*)FUN2()
         WRITE(*,*)1.5_2
         WRITE(*,*)1.5_2+A
         WRITE(*,*)CCC,A,OBJ1
         WRITE(*,*)CCC,44,OBJ1
        CONTAINS
        FUNCTION FUN()
        REAL (KIND=2) :: FUN
        FUN = 5.5_2
        END FUNCTION FUN
        FUNCTION FUN2()
        TYPE(T1) :: FUN2
        FUN2%A = 5.5_2
        END FUNCTION FUN2
        END

