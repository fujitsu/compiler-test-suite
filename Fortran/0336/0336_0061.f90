
      INTEGER*4,PARAMETER :: D1 = 256
      INTEGER*4,PARAMETER :: D2 = 128
      INTEGER*1  C(D1,D2),MIN

      MIN=HUGE(C)

      I2=1
      I3=2
      I4=1
      I5=2
      I6=3
      DO I2=1,D2
      DO I1=1,D1/4,4
          C(I1,I2)=MOD((((I1+I2-I3)*I4)+I5-I6),127)
	  IF (MIN.GT.C(I1,I2)) THEN
	    MIN=C(I1,I2)
	  ENDIF
          C(I1+1,I2)=MOD(((((I1+1)+I2-I3)*I4)+I5-I6),127)
	  IF (MIN.GT.C(I1+1,I2)) THEN
	    MIN=C(I1+1,I2)
	  ENDIF
          C(I1+2,I2)=MOD(((((I1+2)+I2-I3)*I4)+I5-I6),127)
	  IF (MIN.GT.C(I1+2,I2)) THEN
	    MIN=C(I1+2,I2)
	  ENDIF
          C(I1+2,I2)=C(I1+2,I2)+1
          C(I1+3,I2)=C(I1+2,I2)+MOD(((((I1+3)+I2-I3)*I4)+I5-I6),127)
	  IF (MIN.GT.C(I1+3,I2)) THEN
	    MIN=C(I1+3,I2)
	  ENDIF
      ENDDO
      ENDDO

      PRINT *,MIN

      END
