      INTEGER*4 WORK(2700)
      INTEGER*4 A(3,3,3,3,3,3,3),B(3,3,3,3,3,3,3),C(3,3,3,3,3,3,3)
      POINTER (PA,A),(PB,B),(PC,C)
      INTEGER*4 TEN
      INTEGER*4 THREE
      DATA TEN/10/
      DATA THREE/3/

      DO 11 I=1,2700
        WORK(I)=(10*I**(2*I))/(I+I**I)
   11 CONTINUE
      PA=LOC(WORK(1))
      PB=LOC(WORK(1))
      PC=LOC(WORK(1))
      A=A*10
      B=B*3
      C=C*30 

      DO 10 I7=101,103
         DO 10 I6=11,13
            DO 10 I5=10001,10003
               DO 10 I4=11,13
                  DO 10 I3=101,103
                     DO 10 I2=11,13
                        DO 10 I1=101,103
                           A(I1-100,I2-10,I3-100,I4-10,
     C                          I5-10000,I6-10,I7-100)
     C                          =(I1+I2+I3+I4+I5+I6+I7-10330)*TEN
                           B(I1-100,I2-10,I3-100,I4-10,
     C                          I5-10000,I6-10,I7-100)
     C                          =(I1+I2+I3+I4+I5+I6+I7-10330)*THREE
                           C(I1-100,I2-10,I3-100,I4-10,
     C                          I5-10000,I6-10,I7-100)
     C                          =(I1+I2+I3+I4+I5+I6+I7-10330)*TEN*THREE
 10                     CONTINUE

      DO 20 I7=7,THREE+6
         DO 20 I6=6,8
            DO 20 I5=5,THREE+4
               DO 20 I4=4,6
                  DO 20 I3=3,5
                     DO 20 I2=2,THREE+1
                        DO 20 I1=1,THREE
                           IF (((I1.EQ.(I3-2)).AND.
     C                      (I1.EQ.(I5-4)).AND.(I1.EQ.(I7-6))).AND.
     C                          (((I2-1).EQ.(I4-3)).AND.((I4-3).EQ.
     C                      (I6-5))).AND.
     C                          (I1.LT.(I2-1)).AND.((I2-2).GT.1).AND.
     C                      ((I2-2).LE.I1)) THEN
                           A(I1,I2-1,I3-2,I4-3,I5-4,I6-5,I7-6)
     C                          =A(I1,I2-1,I3-2,I4-3,I5-4,I6-5,I7-6)
     C                          -C(I1,I2-1,I3-2,I4-3,I5-4,I6-5,I7-6)
     C                      /THREE
                        ELSE
                           A(I1,I2-1,I3-2,I4-3,I5-4,I6-5,I7-6)
     C                          =A(I1,I2-1,I3-2,I4-3,I5-4,I6-5,I7-6)
     C                          *B(I1,I2-1,I3-2,I4-3,I5-4,I6-5,I7-6)
     C                          /(I1+I2+I3+I4+I5+I6+I7-21)
                        ENDIF

                        IF ((I1.EQ.(I2-1)).AND.((I2-1).EQ.(I3-2)).AND.
     C                       ((I3-2).EQ.(I4-3)).AND.
     C                       ((I4-3).EQ.(I5-4)).AND.
     C                       ((I5-4).EQ.(I6-5)).AND.
     C                       ((I6-5).EQ.(I7-6)).AND.
     C                       ((I4-3).EQ.3)) THEN
                           A(I1,I2-1,I3-2,I4-3,I5-4,I6-5,I7-6)
     C                          =B(I1,I2-1,I3-2,I4-3,I5-4,I6-5,I7-6)
     C                          +C(I1,I2-1,I3-2,I4-3,I5-4,I6-5,I7-6)
                           GOTO 30
                        ENDIF

                        IF ((I1.EQ.(I2-1)).AND.((I2-1).EQ.(I3-2))
     C                       .AND.((I3-2).EQ.(I4-3))
     C                       .AND.((I4-3).EQ.(I5-4))
     C                       .AND.((I5-4).EQ.(I6-5))
     C                       .AND.((I2-1).EQ.2)) THEN
                           J=1
 21                        A(I1,I2-1,I3-2,I4-3,I5-4,I6-5,J)
     C                          =(((I1**2)/(I3-2))/(I4-3))*THREE
                           J=J+1
                           IF (J.LE.3) GOTO 21
                        ENDIF
 20                  CONTINUE

 30   DO 40 I7=1,THREE
         DO 40 I6=1,3
            DO 40 I5=1,THREE
               DO 40 I4=1,3
                  DO 40 I3=1,3
                     DO 40 I2=1,THREE
                        DO 40 I1=1,THREE
                           IF ((I1.EQ.I2).AND.(I2.EQ.I3).AND.(I3.EQ.I4)
     C                          .AND.(I4.EQ.I5).AND.(I5.EQ.I6)) THEN
                              IF ((I1.EQ.3).AND.(I7.EQ.I1)) THEN
                                 IF (A(I1,I2,I3,I4,I5,I6,I7).NE.
     C                                37800) THEN
                                    WRITE (6,*) '???? NG ????  
     C                                   A(3,3,3,3,3,3,3)=',
     C                                   A(I1,I2,I3,I4,I5,I6,I7)
                                    GOTO 50
                                 ENDIF
                              ELSE
                                 IF (I1.EQ.2) THEN
                                    IF (A(I1,I2,I3,I4,I5,I6,I7).NE.
     C                                   THREE) THEN
                                       WRITE (6,*) '???? NG ????  
     C                                      A(2,2,2,2,2,2,N)=',
     C                                      A(I1,I2,I3,I4,I5,I6,I7)
                                       GOTO 50
                                    ENDIF
                                 ELSE
                                    IF (A(I1,I2,I3,I4,I5,I6,I7).NE.
     C                                   C(I1,I2,I3,I4,I5,I6,I7)) THEN
                                       WRITE (6,*) '???? NG ????  
     C                                   A(',I1,',',I2,',',I3,',',
     C                                   I4,',',I5,',',I6,',',I7,')=',
     C                                   A(I1,I2,I3,I4,I5,I6,I7)
                                       GOTO 50
                                    ENDIF
                                 ENDIF
                              ENDIF
                           ELSE
                              IF ((I1.EQ.2).AND.(I2.EQ.3).AND.
     C                             (I3.EQ.2).AND.(I4.EQ.3)
     C                             .AND.(I5.EQ.2).AND.(I6.EQ.3)
     C                             .AND.(I7.EQ.2)) THEN
                                 IF (A(I1,I2,I3,I4,I5,I6,I7).NE.
     C                                340) THEN
                                    WRITE (6,*) '???? NG ????  
     C                                   A(2,3,2,3,2,3,2)=',
     C                                   A(I1,I2,I3,I4,I5,I6,I7)
                                    GOTO 50
                                 ENDIF
                              ELSE
                                 IF (A(I1,I2,I3,I4,I5,I6,I7).NE.
     C                                C(I1,I2,I3,I4,I5,I6,I7)) THEN
                                    WRITE (6,*) '???? NG ????  
     C                                   A(',I1,',',I2,',',I3,',',
     C                                   I4,',',I5,',',I6,',',I7,')=',
     C                                   A(I1,I2,I3,I4,I5,I6,I7)
                                    GOTO 50
                                 ENDIF
                              ENDIF
                           ENDIF
 40                     CONTINUE

                        WRITE (6,*) '**** OK ****'                    
 50                     STOP
                        END
                        
                        
