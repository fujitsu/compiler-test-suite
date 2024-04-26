      INTEGER(KIND=4),DIMENSION(1000) :: A,C,D
      INTEGER(KIND=4),DIMENSION(100,1000) :: B
      DATA A/1000*1/,C/1000*2/,D/1000*3/

      DO I=1,100
         DO J=1,1000
            A(J) = I + D(J)
            B(I,J) = A(1) + C(J)
         ENDDO
      ENDDO
      PRINT*, A,B
      END
