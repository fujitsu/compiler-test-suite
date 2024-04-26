      REAL*8 A(10,10)/100*0/
      REAL*8 B(10,10)/100*0/
      REAL*8 C(10,10)/100*0/
      COMPLEX*8 D(10,10)/100*(2.0D+0,1.0D+0)/
      COMPLEX*8 E(10,10)/100*(2.0D+0,1.0D+0)/
      INTEGER*4 I,J
C
      DO 10 I=1,10
        DO 10 J=1,10
          A(I,J) = I * 1.1
          B(I,J) = I * 2.1
          C(I,J) = I * 3.1
   10 CONTINUE
C
      DO 20 I=1,10
        DO 20 J=1,10
          D(I,J) = CSIN(D(I,J))
          E(I,J) = CCOS(E(I,J))
   20 CONTINUE
C
      DO 30 I=1,10
        DO 30 J=1,10
          A(I,J) = B(I,J) * 0.25
          B(I,J) = C(I,J) * 0.75
          C(I,J) = A(I,J) * 0.5
          D(I,J) = E(I,J) * 1.38
          E(I,J) = D(I,J) * 2.01
   30 CONTINUE
C
      DO 1000 I=1,5
        DO 1000 J=1,5
          WRITE(6,*) A(I,J),' ',B(I,J),' ',C(I,J)
 1000 CONTINUE
C
      DO 1100 I=1,5
        DO 1100 J=1,5
          WRITE(6,*) D(I,J),' ',E(I,J)
 1100 CONTINUE
C
      STOP
      END
