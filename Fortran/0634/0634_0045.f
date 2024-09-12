      WRITE(6,10)
   10 FORMAT('1',5X,'OS/700 FORTRAN-A TEAT ... = TEST ='/)
      IP=0
      CALL E02020 (IP)
      IF ( IP.NE. 0 ) GO TO 30
      WRITE(6,20)
   20 FORMAT('0',20X,'= TEST =     OK')
   30 WRITE(6,40)
   40 FORMAT(6X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE E02020 (IP)
               DIMENSION X(1,1,1,1,1,1,1)
               COMPLEX   X,Y
               COMMON /COMMON/ I1,I2,I3,I4,I5,I6,I7
               EQUIVALENCE (J(4),I4)
               INTEGER J(7)
               DATA  J  /7*1 /
      DO 100 K=1,7
  100 J(K)=1
      CALL E02021 ( X,Y )
      IF (REAL(Y).EQ.5.0 .AND. IMAG(Y).EQ.12.0 )  GO TO 20
          IP=IP+1
          WRITE(6,10) X(I1,I2,I3,I4,I5,I6,I7),X,Y
   10     FORMAT('0',10X,'E02020  NG',6F15.5)
   20 RETURN
      END
      SUBROUTINE E02021 (X,Y )
               COMMON /COMMON/ N1,N2,N3,N4,N5,N6,N7
               COMPLEX X(N1,N2,N3,N4,N5,N6,N7) , Y
               INTEGER  J(7)
               EQUIVALENCE  ( J(7),N7 )
      X(J(1),J(2),J(3),J(4),J(5),J(6),J(7)) = ( 5.0 , 12.0 )
      Y = X (1,1,1,1,1,1,1)
      RETURN
      END
