      INTEGER*4 A(1024)/1024*0/,B(1024)/1024*10/
      N=10
      DO 10 I=1,1024
        IF(I.GT.55) THEN
          IF(N.GT.5) THEN
            A(I)=B(I)
            IF(I.GT.555) THEN
              A(I)=B(I)*5
            ELSE
              A(I)=B(I)*3
            ENDIF
          ELSE
            A(I)=B(I)*9
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT(25I3)
      STOP
      END
