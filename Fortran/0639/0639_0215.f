      PROGRAM MAIN

      INTEGER*4  I041(100)

      DO 10 I1=1,100
        IF( I1.GT.10 .AND. I1.LT.21 )
     1    THEN
            I041(11+(20-I1))=I1
          ELSE
     1  IF( I1.GT.30 .AND. I1.LT.41 )
     1    THEN
            I041(31+(40-I1))=I1
          ELSE
     1  IF( I1.GT.50 .AND. I1.LT.61 )
     1    THEN
            I041(51+(60-I1))=I1
          ELSE
     1  IF( I1.GT.70 .AND. I1.LT.81 )
     1    THEN
            I041(71+(80-I1))=I1
          ELSE
     1  IF( I1.GT.90 .AND. I1.LT.101)
     1    THEN
            I041(91+(100-I1))=I1
          ELSE
            I041(I1)=I1
        ENDIF
10    CONTINUE

      DO 20 I1=1,10
         WRITE(6,200)
         I2=(I1-1)*10+1
         WRITE(6,201) (I041(I3),I3=I2,I2+9,1)
20    CONTINUE
      WRITE(6,200)
200   FORMAT(1H ,5X,
     1   '+----+----+----+----+----+----+----+----+----+----+')
201   FORMAT(1H ,5X,'!',10(I4,'!'))
      STOP
      END
