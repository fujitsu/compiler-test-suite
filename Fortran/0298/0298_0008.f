      INTEGER*4   A(1,1)/3/
      integer     B(5,2)/1,2,3,4,5,6,7,8,9,10/

      DO 320 I=1,1
         write(6,*)
         DO 310 J=2,5
            B(J,i)=B(J-1,i)
            DO 300 K=1,1
               IF(A(1,K).NE.0) THEN
               ENDIF
 300        CONTINUE
 310     CONTINUE
 320  CONTINUE

      WRITE(6,*) B
      END
