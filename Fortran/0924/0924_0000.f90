MODULE M
  TYPE T
      INTEGER::A=4
      REAL*2::R2
      COMPLEX(KIND=2)::C2
END TYPE T
END MODULE M

PROGRAM MAIN

USE M
TYPE(T),POINTER::OBJW(:),OBJR(:)
INTEGER::G,F,Y,S,K,J,I,R
TYPE(T),TARGET::OBJ11(2),OBJ22(2)
REAL*2::RR2
COMPLEX(KIND=2)::CC2
OBJW=>OBJ11
OBJR=>OBJ22
OBJW(1)%A=4
OBJW(2)%A=4


 OPEN (UNIT=71, FILE='FORT.76', FORM='FORMATTED')
WRITE(UNIT=71,*) ((((((((OBJW,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
WRITE(UNIT=71,*) ((((((((RR2,CC2,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=71)


 OPEN (UNIT=77, FILE='FORT.76', FORM='FORMATTED')
READ(UNIT=77,*) ((((((((OBJR,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
READ(UNIT=77,*) ((((((((RR2,CC2,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=77,STATUS='DELETE')
END PROGRAM

