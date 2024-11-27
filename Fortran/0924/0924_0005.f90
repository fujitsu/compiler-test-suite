MODULE M
        REAL (KIND =2) :: A
        COMPLEX(KIND=2)::CC1,CC2(5)
        TYPE T1
         COMPLEX(KIND =2) :: A
        END TYPE
        TYPE TT
         COMPLEX (KIND =4) :: AA
        END TYPE
   END MODULE  
USE M
       TYPE T2
         TYPE(T1)::CMP
       END TYPE 
       TYPE TT2
         TYPE(T1),POINTER::CMP2
       END TYPE 

      TYPE(T1)::OBJ1
      TYPE(T2)::OBJ2(2)
      TYPE(T2)::OBJ3
      COMPLEX (KIND =2) :: ARR(5,5)
      TYPE(TT)::CCC
      TYPE(TT2)::OBJ4
      
      NAMELIST /N1/  A ,CC2
      NAMELIST /N2/  OBJ1 ,CC1
      NAMELIST /N3/  OBJ3
      NAMELIST /N4/  CCC,A,OBJ1 
      NAMELIST /N6/  OBJ4 
END   
