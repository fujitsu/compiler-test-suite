      PROGRAM MAIN

      INTEGER*4 A(20),S
      INTEGER*4 WA(20)
      POINTER (PA,A)
      PA=LOC(WA(1))
      DO 1000,I=1,20
         A(I) = 0
 1000 CONTINUE
      S=0
      J=2
      K=1
      CALL SUB(J,K,A)
      DO 10 I=1,20
        S=A(I)+S
   10 CONTINUE
      IF(S.EQ.48) THEN
        WRITE(6,*) 'OKOKOK OKOKOK'
      ELSE
        WRITE(6,*) 'NGNGNG NGNGNG'
      END IF
      END

      SUBROUTINE SUB(L,M,WB)
      INTEGER*4 WB(20)
      INTEGER*4 B(20)
      POINTER (PB,B)
      PB=LOC(WB(1))
      I=L+M
      IF(L.GT.1) THEN
       B(1)=L+M
      IF(L.GT.1) THEN
       B(2)=L+M
      IF(L.GT.1) THEN
       B(3)=L+M
      IF(L.GT.1) THEN
       B(4)=L+M
      IF(L.GT.1) THEN
       B(5)=L+M
      IF(L.GT.1) THEN
       B(6)=L+M
      IF(L.GT.1) THEN
       B(7)=L+M
      IF(L.GT.1) THEN
       B(8)=L+M
      IF(L.GT.1) THEN
       B(9)=L+M
      IF(L.GT.1) THEN
       B(10)=L+M
      IF(L.GT.1) THEN
       B(11)=L+M
      IF(L.GT.1) THEN
       B(12)=L+M
      IF(L.GT.1) THEN
       B(13)=L+M
      IF(L.GT.1) THEN
       B(14)=L+M
      IF(L.GT.1) THEN
       B(15)=L+M
      IF(L.GT.1) THEN
       B(16)=L+M
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      RETURN
      END
