      PROGRAM MAIN

       LOGICAL*4 L10(10), L11(10), L12(10), L13(10), L14(10), L15(10), 
     X   L16(10), L17(10), LV10, LV11, LV12, LV13, LV14
       DATA LV10/.TRUE./ 
       DATA LV11/.TRUE./ 
       DATA LV12/.TRUE./ 
       DATA L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L12/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L13/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA LV13/.FALSE./ 
       DATA LV14/.FALSE./ 
       DATA L11/.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE./ 
       DATA L14/10*.FALSE./ 
       DATA L15/10*.FALSE./ 
       DATA L16/10*.FALSE./ 
       DATA L17/10*.FALSE./ 

       LOGICAL*4 L20(10), L21(10), L22(10), L23(10)
       LOGICAL*4 LV20, LV21, LV22, LV23, LV24
       INTEGER*4 I20(10)

       DATA LV20/.TRUE./ 
       DATA LV21/.TRUE./ 
       DATA LV22/.TRUE./ 
       DATA LV23/.TRUE./ 
       DATA LV24/.TRUE./ 
       DATA L20/5*.FALSE.,5*.TRUE./ 
       DATA L21/.TRUE.,.FALSE.,.TRUE.,3*.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE./ 
       DATA L22/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,5*.FALSE./ 
       DATA L23/.TRUE.,.FALSE.,3*.TRUE.,5*.TRUE./ 
       DATA I20/10*0/ 

       REAL*4 R30(10)
       REAL*8 RD30(10)
       LOGICAL*4 L30(10), LV30
       INTEGER*4 I30(10), I31(10), I32(10)
       DOUBLEPRECISION RDV30
       REAL RV30
       INTEGER J, N
       PARAMETER (RDV30 = 5D0, RV30 = 3.3, J = 5, N = 10)

       DATA R30/0,3.4,5.,0,3.2,3.4,6,7,0,3.3/ 
       DATA I30/10*0/ 
       DATA I31/10*0/ 
       DATA I32/10*0/ 
       DATA RD30/1,2,3,4,5,6,7,8,9,10/ 
       DATA L30/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       DATA LV30/.TRUE./ 


       WRITE (6, *) '----- LOOP 1 -----'
       DO I=1,10
        IF (L10(I)) THEN
         IF (.FALSE. .NEQV. L11(I)) THEN
          IF (L12(I) .EQV. L13(I)) THEN
           L14(I) = .TRUE.
          END IF
         ELSE
          L15(I) = .TRUE.
         END IF
        ELSE
         L16(I) = .FALSE.
        END IF
       END DO
       WRITE (6, *) L14
       WRITE (6, *) L15
       WRITE (6, *) L16
       WRITE (6, *) L17


       WRITE (6, *) '----- LOOP 2 -----'
       IF (.TRUE. .NEQV. L21(5)) THEN
        IF (L22(5) .EQV. L23(5)) THEN
         DO I=1,6,5
          I20(I) = I
          I20(I+1) = I + 1
          I20(I+2) = I + 2
          I20(I+3) = I + 3
          I20(I+4) = I + 4
         END DO
        END IF
       END IF
       WRITE (6, *) I20


       WRITE (6, *) '----- LOOP 3 -----'
       DO I=1,10
        LV30 = RD30(I) .LE. 5D0
        IF (L30(I)) THEN
         IF (LV30) THEN
          I31(I) = I
         ELSE
          I31(I) = -I
         END IF
        ELSE
         I32(I) = I
        END IF
        IF (LV30 .AND. L30(I)) THEN
         L30(I) = .TRUE.
        END IF
       END DO
       WRITE (6, *) I31
       WRITE (6, *) I32
       WRITE (6, *) L30
       STOP 
      END
