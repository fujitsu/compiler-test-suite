       PROGRAM MAIN
       COMMON X,Y,Z  
       REAL*8 X(1002),Y(1002),Z(1002)  
       REAL*8  Q,R,T,SUM
       INTEGER DUMMY_LOOP,K,SUM1
       CALL INIT()

       Q = 1.0;
       R = 4.86;
       T = 276.0;
       DO 10 DUMMY_LOOP=1,250000,1
         DO 10 K=1,400,1
            X(K) = Q+Y( K )*(R*Z(K+10)+T*Z(K+11))
   10  CONTINUE
       SUM = 0.0
       DO 20 K=1,400,1
          SUM = SUM + X(K)
   20  CONTINUE
       SUM1 = SUM
       if ( SUM1 .EQ. 167060 ) THEN
         WRITE(6,*) " OK "
       ELSE
         WRITE(6,*) " NG "
       ENDIF
       STOP 
       END
C
       SUBROUTINE INIT()
       INTEGER K
       COMMON X,Y,Z  
       REAL*8 X(1002),Y(1002),Z(1002)  
C
       DO 30 K=1,1000
         X(k) = 1.11 
         Y(k) = 1.123
         Z(k) = 1.321
   30  CONTINUE
       RETURN
       END
