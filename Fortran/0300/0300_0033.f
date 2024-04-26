       REAL A005(3,3),B005(3,3),C005(3,3)
       DATA A005,B005,C005/9*4.0, 9*2.0, 9*3.0/
       DO 123 I=1,3
       DO 123 J=1,3
         A005(J,I)=B005(J,I)*C005(J,I)
         B005(J,I)=A005(2,I)/C005(J,I)
         A005(J,I)=B005(J,I)/C005(J,I)
  123  CONTINUE
       WRITE(6,*)  A005
       END
