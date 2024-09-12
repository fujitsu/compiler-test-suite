         REAL*4 R1A(100),R1B(100),R1C(100),R1D(100)
         REAL*4 R2A(100),R2B(100),R2C(100),R2D(100)
         REAL*4 R3A(100),R3B(100),R3C(100),R3D(100)
         REAL*4 R4A(100),R4B(100),R4C(100),R4D(100)
         EQUIVALENCE (R1A,R2A),(R2A,R3A),(R3A,R4A)
         EQUIVALENCE (R1A,R2B),(R2B,R3B),(R3B,R4B)
         EQUIVALENCE (R1A,R2C),(R2C,R3C),(R3C,R4C)
         EQUIVALENCE (R1A,R2D),(R2D,R3D),(R3D,R4D)

         DO 10 I1=1,1
         DO 10 I2=1,I1
         DO 10 I3=1,I2
         DO 10 I4=1,I3
         DO 10 I5=1,I4
         DO 10 I6=1,I5
         DO 10 I7=1,1
         DO 10 I8=1,I7+I5-1
         DO 10 I9=1,10+I8-10
         DO 10 J=1,2
         DO 10 I=1,100
           R1A(I)=1.0
           R1B(I)=2.0
           R1C(I)=4.0
           R1D(I)=8.0
           R2A(I)=1.0
           R2B(I)=2.0
           R2C(I)=4.0
           R2D(I)=8.0
           R3A(I)=1.0
           R3B(I)=2.0
           R3C(I)=4.0
           R3D(I)=8.0
           R4A(I)=1.0
           R4B(I)=2.0
           R4C(I)=4.0
           R4D(I)=8.0
           R2A(I)=1.0+R1A(I)
           R2B(I)=2.0+R1A(I)
           R2C(I)=4.0-R1C(I)
           R2D(I)=8.0+R1A(I)-R1B(I)+R1C(I)-R1D(I)+R2A(I)+1.0
           IF(R1A(I).EQ.R2B(I)) THEN
           R1A(I)=1.1
           R1B(I)=1.2
           R1C(I)=1.4
           R1D(I)=1.8
           R2A(I)=1.1
           R2B(I)=1.2
           R2C(I)=1.4
           R2D(I)=1.8
           R3A(I)=1.1
           R3B(I)=1.2
           R3C(I)=4.0
           R3D(I)=8.0
           R4A(I)=1.0
           R4B(I)=2.0
           R4C(I)=4.0
           R4D(I)=8.0
           R2D(I)=1.0+R1A(I)+R1B(I)-R1C(I)+R1D(I)+R2A(I)+1.0
           R4D(I)=1.0+R4A(I)+R4B(I)-R4C(I)+R4D(I)+R3A(I)+1.0
           ENDIF
10         CONTINUE
         WRITE(6,1239) R1A,R1B,R1C,R1D
         WRITE(6,1239) R2A,R2B,R2C,R2D
         WRITE(6,1239) R3A,R3B,R3C,R3D
         WRITE(6,1239) R4A,R4B,R4C,R4D
1239     FORMAT(1H ,100(F13.5,F13.5,F13.5,F13.5,/))
         CALL SUB1
         CALL SUB2
         CALL SUB3
         STOP
         END
         SUBROUTINE SUB1
         REAL*4 R1A(100),R1B(100),R1C(100),R1D(100)
         REAL*4 R2A(100),R2B(100),R2C(100),R2D(100)
         REAL*4 R3A(100),R3B(100),R3C(100),R3D(100)
         REAL*4 R4A(100),R4B(100),R4C(100),R4D(100)

         DO 10 I1=1,1
         DO 10 I2=1,I1
         DO 10 I3=1,I2
         DO 10 I4=1,I3
         DO 10 I5=1,I4
         DO 10 I6=1,I5
         DO 10 I7=1,1
         DO 10 I8=1,I7+I5-1
         DO 10 I9=1,10+I8-10
         DO 10 J=1,2
         DO 10 I=1,100
           R1A(I)=1.0
           R1B(I)=2.0
           R1C(I)=4.0
           R1D(I)=8.0
           R2A(I)=1.0
           R2B(I)=2.0
           R2C(I)=4.0
           R2D(I)=8.0
           R3A(I)=1.0
           R3B(I)=2.0
           R3C(I)=4.0
           R3D(I)=8.0
           R4A(I)=1.0
           R4B(I)=2.0
           R4C(I)=4.0
           R4D(I)=8.0
           R2A(I)=1.0+R1A(I)
           R2B(I)=2.0+R1A(I)
           R2C(I)=4.0-R1C(I)
           R2D(I)=8.0+R1A(I)-R1B(I)+R1C(I)-R1D(I)+R2A(I)+1.0
           IF(R1A(I).EQ.R2B(I)) THEN
           R1A(I)=1.1
           R1B(I)=1.2
           R1C(I)=1.4
           R1D(I)=1.8
           R2A(I)=1.1
           R2B(I)=1.2
           R2C(I)=1.4
           R2D(I)=1.8
           R3A(I)=1.1
           R3B(I)=1.2
           R3C(I)=4.0
           R3D(I)=8.0
           R4A(I)=1.0
           R4B(I)=2.0
           R4C(I)=4.0
           R4D(I)=8.0
           R2D(I)=1.0+R1A(I)+R1B(I)-R1C(I)+R1D(I)+R2A(I)+1.0
           R4D(I)=1.0+R4A(I)+R4B(I)-R4C(I)+R4D(I)+R3A(I)+1.0
           ENDIF
10         CONTINUE
         WRITE(6,*) R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         RETURN
         END
         SUBROUTINE SUB2
         REAL*4 R1A(100),R1B(100),R1C(100),R1D(100)
         REAL*4 R2A(100),R2B(100),R2C(100),R2D(100)
         REAL*4 R3A(100),R3B(100),R3C(100),R3D(100)
         REAL*4 R4A(100),R4B(100),R4C(100),R4D(100)
         DATA R1A/100*0.0/,R1B/100*0./,R1C/100*0./,R1D/100*0./
         DATA R2A/100*0.0/,R2B/100*0./,R2C/100*0./,R2D/100*0./
         DATA R3A/100*0.0/,R3B/100*0./,R3C/100*0./,R3D/100*0./
         DATA R4A/100*0.0/,R4B/100*0./,R4C/100*0./,R4D/100*0./
         INTEGER*4 L(100)

         DO 10 I1=1,1
         DO 10 I2=1,I1
         DO 10 I3=1,I2
         DO 10 I4=1,I3
         DO 10 I5=1,I4
         DO 10 I6=1,I5
         DO 10 I7=1,1
         DO 10 I8=1,I7+I5-1
         DO 10 I9=1,10+I8-10
         DO 10 J=1,2
         DO 10 I=1,100
           L(I)=I
           IF(I.GT.50) THEN
             L(I)=1
           ENDIF
           R1A(I)=1.0
           R1B(I)=2.0
           R1C(I)=4.0
           R1D(I)=8.0
           R2A(I)=1.0
           R2B(I)=2.0
           R2C(I)=4.0
           R2D(I)=8.0
           R3A(I)=1.0
           R3B(I)=2.0
           R3C(I)=4.0
           R3D(I)=8.0
           R4A(I)=1.0
           R4B(I)=2.0
           R4C(I)=4.0
           R4D(I)=8.0
           R2A(I)=1.0+R1A(I)
           R2B(I)=2.0+R1A(I)
           R2C(I)=4.0-R1C(I)
           R2D(I)=8.0+R1A(I)-R1B(I)+R1C(I)-R1D(I)+R2A(I)+1.0
           IF(R1A(I).NE.R2B(I)) THEN
           R1A(L(I))=1.1
           R1B(L(I))=1.2
           R1C(L(I))=1.4
           R1D(L(I))=1.8
           R2A(L(I))=1.1
           R2B(L(I))=1.2
           R2C(L(I))=1.4
           R2D(L(I))=1.8
           R3A(L(I))=1.1
           R3B(L(I))=1.2
           R3C(L(I))=4.0
           R3D(L(I))=8.0
           R4A(I)=1.0
           R4B(I)=2.0
           R4C(I)=4.0
           R4D(I)=8.0
           R2D(I)=1.0+R1A(I)+R1B(I)-R1C(I)+R1D(I)+R2A(I)+1.0
           R4D(I)=1.0+R4A(I)+R4B(I)-R4C(I)+R4D(I)+R3A(I)+1.0
           ENDIF
10         CONTINUE
         WRITE(6,*) R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         RETURN
         END
         SUBROUTINE SUB3
         REAL*4 R1A(100),R1B(100),R1C(100),R1D(100)
         REAL*4 R2A(100),R2B(100),R2C(100),R2D(100)
         REAL*4 R3A(100),R3B(100),R3C(100),R3D(100)
         REAL*4 R4A(100),R4B(100),R4C(100),R4D(100)
         INTEGER*4 N/10/
         EQUIVALENCE (R1A,R2A),(R2A,R3A),(R3A,R4A)
         EQUIVALENCE (R1B,R2B),(R2B,R3B),(R3B,R4B)
         EQUIVALENCE (R1C,R2C),(R2C,R3C),(R3C,R4C)
         EQUIVALENCE (R1D,R2D),(R2D,R3D),(R3D,R4D)

         DO 10 I1=1,1
         DO 10 I2=1,I1
         DO 10 I3=1,I2
         DO 10 I4=1,I3
         DO 10 I5=1,I4
         DO 10 I6=1,I5
         DO 10 I7=1,1
         DO 10 I8=1,I7+I5-1
         DO 10 I9=1,10+I8-10
         DO 10 J=1,2
         DO 10 I=1,N*N
           R1A(I)=1.0
           R1B(I)=2.0
           R1C(I)=4.0
           R1D(I)=8.0
           R2A(I)=1.0
           R2B(I)=2.0
           R2C(I)=4.0
           R2D(I)=8.0
           R3A(I)=1.0
           R3B(I)=2.0
           R3C(I)=4.0
           R3D(I)=8.0
           R4A(I)=1.0
           R4B(I)=2.0
           R4C(I)=4.0
           R4D(I)=8.0
           R2A(I)=1.0+R1A(I)
           R2B(I)=2.0+R1A(I)
           R2C(I)=4.0-R1C(I)
           R2D(I)=8.0+R1A(I)-R1B(I)+R1C(I)-R1D(I)+R2A(I)+1.0
           IF(R1A(I).EQ.R1B(I)) THEN
           IF(N.GT.0) THEN
           R1A(I)=1.1
           R1B(I)=1.2
           R1C(I)=1.4
           R1D(I)=1.8
           R2A(I)=1.1
           R2B(I)=1.2
           R2C(I)=1.4
           R2D(I)=1.8
           R3A(I)=1.1
           R3B(I)=1.2
           R3C(I)=4.0
           R3D(I)=8.0
           R4A(I)=1.0
           R4B(I)=2.0
           R4C(I)=4.0
           R4D(I)=8.0
           R2D(I)=1.0+R1A(I)+R1B(I)-R1C(I)+R1D(I)+R2A(I)+1.0
           R4D(I)=1.0+R4A(I)+R4B(I)-R4C(I)+R4D(I)+R3A(I)+1.0
           ENDIF
           ENDIF
10         CONTINUE
         DO 20 I=N,N*N,N
           R2A(I)=1.0+R1A(I)
           R2B(I)=2.0+R1A(I)
           R2C(I)=4.0-R1C(I)
           R2D(I)=8.0+R1A(I)-R1B(I)+R1C(I)-R1D(I)+R2A(I)+1.0
           IF(R1A(I).EQ.R1B(I)) THEN
           IF(N.GT.0) THEN
           R1A(I)=R1B(I)
           R1B(I)=R1C(I)
           R1C(I)=R1D(I)
           R1D(I)=R2A(I)
           R2A(I)=R2B(I)
           R2B(I)=R2C(I)
           R2C(I)=R2D(I)
           R2D(I)=R3A(I)
           R3A(I)=R3B(I)
           R3B(I)=R4C(I)
           R3C(I)=R4D(I)
           R3D(I)=R3C(I)
           R2D(I)=1.0+R1A(I)+R1B(I)-R1C(I)+R1D(I)+R2A(I)+1.0
           R4D(I)=1.0+R4A(I)+R4B(I)-R4C(I)+R4D(I)+R3A(I)+1.0
           ENDIF
           ENDIF
20         CONTINUE
         WRITE(6,5678) R1A,R1B,R1C,R1D
         WRITE(6,5678) R2A,R2B,R2C,R2D
         WRITE(6,5678) R3A,R3B,R3C,R3D
         WRITE(6,5678) R4A,R4B,R4C,R4D
5678     FORMAT(1H ,100(F13.4,F13.4,F13.4,F13.4,/))
         RETURN
         END
