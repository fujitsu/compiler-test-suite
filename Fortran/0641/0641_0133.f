      PROGRAM MAIN

       REAL*8 DV1(0:12,0:12), DV2(1:13,-13:-1)
       DATA DV2/169*2.25/ 
       DATA DV1/169*3.5/ 
       LOGICAL LV1(1:13,1:13)
       DATA LV1/169*.FALSE./ 
       INTEGER NV1(1:13,1:13)
       DATA NV1/169*2/ 

       DO I=2,11
        IF (MOD (I, 2) .EQ. 0) THEN
         LV1(I,I) = MOD (I + 1, 3) .NE. 1
         DV1(I-1,I-1) = DV2(I-1,1-I) ** 3
         NV1(2,2) = NV1(2,2) + 3
         DV1(I,I) = DV2(I,-I) * DV2(I,-I)
         LV1(I+1,I+1) = DV1(I,I) * I .GT. 5D0
         DV1(I+1,I+1) = FLOAT (I) ** I
        ELSE
         LV1(I,I) = DV1(I-1,I-1) * I .GT. 3D0
         DV1(I-1,I-1) = DV2(I-1,1-I) * DV2(I-1,1-I)
         NV1(1,2) = NV1(1,2) + NV1(I,3) * I
         DV1(I,I) = DV2(I,-I) ** 3.
         LV1(I+1,I+1) = MOD (I + 1, 3) .NE. 2
         DV1(I+1,I+1) = FLOAT (I) ** I + NV1(I,1)
        END IF
       END DO

       WRITE (6, *) DV1, DV2, LV1, NV1
       STOP 
      END
