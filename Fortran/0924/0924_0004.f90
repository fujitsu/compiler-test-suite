MODULE M
        REAL (KIND =2) :: A,B
        TYPE T1
         COMPLEX(KIND =2) :: A
        END TYPE
END MODULE  
USE M
       TYPE T2
         TYPE(T1)::CMP
       END TYPE 
      TYPE(T1)::OBJ1
      TYPE(T2)::OBJ2(2)
      TYPE(T2)::OBJ3(2)
      COMPLEX (KIND =2) :: ARR(5,5)
        CHARACTER(LEN=80)::CH
         WRITE(CH,FMT=*) A
         READ(CH,FMT=*) B
         WRITE(CH,FMT=*) OBJ2%CMP
         READ(CH,FMT=*) OBJ3%CMP
         WRITE(CH,FMT=*) OBJ2(1)
         READ(CH,FMT=*) OBJ3(1)
         WRITE(CH,*)1.5_2+A
END

