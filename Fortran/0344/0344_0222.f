      PROGRAM  MAIN
      INTEGER * 4 I4A00A(50)/50*1/,I401(50)/50*3/,I402(50)/50*4/
      REAL  * 4   R4A00C(50)/50*2/
      DO 111 I=1,10
        N01 = I - 9
        M01 = I * 5
 111    IC1 = 11 - I

      Do 201 I002=N01,M01,IC1
        DO 300 I001=M01,N01,-1
          IF (SIN(R4A00C(I002)).GT.0.0) THEN
            I4A00A(I001)=I001+1.0
          ENDIF
300     CONTINUE
201   CONTINUE

      WRITE(6,900) I4A00A
      WRITE(6,901) R4A00C
900   FORMAT(1H0,5I8)
901   FORMAT(1H0,5F12.5)
C
      DO 401 I002=N01,M01,IC1
        DO 500 I001=M01,N01,-1
          IF (I401(I002)**I402(I002).GT.0.0) THEN
            I4A00A(I001)=R4A00C(I001) + I001
          ENDIF
500     CONTINUE
401   CONTINUE


      WRITE(6,900) I4A00A
      STOP
      END