      INTEGER*4 WORK(2700)
      INTEGER*4 NOK1,NOK2,NOK3,NOK4,NOK5
      INTEGER*4 A(3,3,3,3,3,3,3),B(3,3,3,3,3,3,3),C(3,3,3,3,3,3,3)
      INTEGER*4 THREE
      POINTER (PA,A),(PB,B),(PC,C)
      DATA THREE/3/
      NOK1=0
      NOK2=0
      NOK3=0
      NOK4=0
      NOK5=0
      DO 10 I=1,2700
        WORK(I)=(10*I**(2*I))/(I+I**I)
   10 CONTINUE
      PA=LOC(WORK(1))
      PB=LOC(WORK(1))
      PC=LOC(WORK(1))
      A=A*10
      B=B*3
      C=C*30 
      DO 20 I7=1,THREE
       DO 20 I6=1,3
        DO 20 I5=1,THREE
         DO 20 I4=1,3
          DO 20 I3=1,3
           DO 20 I2=1,THREE
            DO 20 I1=1,THREE
             IF (((I1.EQ.I3).AND.(I1.EQ.I5).AND.(I1.EQ.I7)).AND.
     C         ((I2.EQ.I4).AND.(I4.EQ.I6)).AND.
     C         (I1.LT.I2).AND.((I2-1).GT.1).AND.((I2-1).LE.I1)) THEN
                  A(I1,I2,I3,I4,I5,I6,I7)=A(I1,I2,I3,I4,I5,I6,I7)
     C                   -C(I1,I2,I3,I4,I5,I6,I7)/THREE
             ELSE
                A(I1,I2,I3,I4,I5,I6,I7) = A(I1,I2,I3,I4,I5,I6,I7)
     C            *B(I1,I2,I3,I4,I5,I6,I7)/(I1+I2+I3+I4+I5+I6+I7) 
             ENDIF
             IF ((I1.EQ.I2).AND.(I2.EQ.I3).AND.
     C            (I3.EQ.I4).AND.(I4.EQ.I5).AND.
     C            (I5.EQ.I6).AND.(I6.EQ.I7).AND.(I4.EQ.3)) THEN
                A(I1,I2,I3,I4,I5,I6,I7)=B(I1,I2,I3,I4,I5,I6,I7)
     C               +C(I1,I2,I3,I4,I5,I6,I7)
                GOTO 30
             ENDIF
        IF ((I1.EQ.I2).AND.(I2.EQ.I3).AND.(I3.EQ.I4)
     C       .AND.(I4.EQ.I5).AND.(I5.EQ.I6).AND.(I2.EQ.2)) THEN
           J=1
 21        A(I1,I2,I3,I4,I5,I6,J)=(((I1**2)/I3)/I4)*THREE
           J=J+1
           IF (J.LE.3) GOTO 21
        ENDIF
 20   CONTINUE

 30   DO 40 I7=1,THREE
       DO 40 I6=1,3
        DO 40 I5=1,THREE
         DO 40 I4=1,3
          DO 40 I3=1,3
           DO 40 I2=1,THREE
            DO 40 I1=1,THREE
               IF ((I1.EQ.I2).AND.(I2.EQ.I3).AND.(I3.EQ.I4)
     C              .AND.(I4.EQ.I5).AND.(I5.EQ.I6)) THEN
                  IF ((I1.EQ.3).AND.(I7.EQ.I1)) THEN
                     IF (A(I1,I2,I3,I4,I5,I6,I7).NE.
     C                    77142) THEN
                      WRITE (6,*) '???? NG1 ????  A(3,3,3,3,3,3,3)=',
     C                     A(I1,I2,I3,I4,I5,I6,I7)
                     ELSE
                        NOK1=NOK1+1
                     ENDIF
                  ELSE 
                     IF (I1.EQ.2) THEN
                        IF (A(I1,I2,I3,I4,I5,I6,I7).NE.THREE) THEN
                           WRITE (6,*) '???? NG2 ???? 
     C                          A(2,2,2,2,2,2,N)=',
     C                          A(I1,I2,I3,I4,I5,I6,I7)
                        ELSE
                           NOK2=NOK2+1
                        ENDIF
                     ELSE
                        IF (A(I1,I2,I3,I4,I5,I6,I7).NE.
     C                       C(I1,I2,I3,I4,I5,I6,I7)) THEN
                           WRITE (6,*) '???? NG3 ????  
     C                      A(',I1,',',I2,',',I3,',',
     C                          I4,',',I5,',',I6,',',I7,')=',
     C                      A(I1,I2,I3,I4,I5,I6,I7)
                        ELSE
                           NOK3=NOK3+1
                        ENDIF
                     ENDIF 
                  ENDIF
               ELSE IF ((I1.EQ.2).AND.(I2.EQ.3).AND.(I3.EQ.2).
     C                 AND.(I4.EQ.3)
     C              .AND.(I5.EQ.2).AND.(I6.EQ.3).AND.(I7.EQ.2)) THEN
                  IF (A(I1,I2,I3,I4,I5,I6,I7).NE.-600) THEN
                     WRITE (6,*) '???? NG4 ????  A(2,3,2,3,2,3,2)=',
     C                    A(I1,I2,I3,I4,I5,I6,I7)
                  ELSE
                     NOK4=NOK4+1
                  ENDIF
               ELSE 
                  IF (A(I1,I2,I3,I4,I5,I6,I7).NE.
     C                 C(I1,I2,I3,I4,I5,I6,I7)) THEN
                     WRITE (6,*) '???? NG5 ???? 
     C                    A(',I1,',',I2,',',I3,',',
     C                    I4,',',I5,',',I6,',',I7,')=',
     C                    A(I1,I2,I3,I4,I5,I6,I7)
                  ELSE
                     NOK5=NOK5+1
                  ENDIF
               ENDIF
 40   CONTINUE
      WRITE(6,*)'NOK=',NOK1,NOK2,NOK3,NOK4,NOK5
      WRITE (6,*) '**** OK ****'
      END
      
