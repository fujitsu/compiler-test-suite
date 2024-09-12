       INTEGER*4  A1(50)
       REAL*4     A2(50)
       REAL*8     A3(50)
       PRINT *, '========== CALL SUBA1 ========='
       CALL       SUBA1( A1,50 )
       PRINT *, '========== CALL SUBA2 ========='
       CALL       SUBA2( A2,50 )
       PRINT *, '========== CALL SUBA3 ========='
       CALL       SUBA3( A3,50 )
       STOP
       END
       SUBROUTINE SUBA1( A1,NN )
       INTEGER*4         A1(NN)
       REAL*8 A(50),B(50),C(50),D(50),E(50),F(50)
       DATA A,B,C,D,E/50*6.,50*5.,50*4.,50*3.,50*2./
       PRINT *, '========== SUBA1 ========== ENTERED ========='
       DO 151 I=1,50
         A1(I)=I
151    CONTINUE

       DO 51 I=1,50
         IF( A1(I) .LT. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A1(I) .LT. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A1(I) .LT. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A1(I) .LT. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A1(I) .LT.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
51     CONTINUE
       PRINT *, '     TEST ITEM NO. 1      '
       PRINT *, '     .LT. OPERATION       '
       PRINT *,F

       DO 52 I=1,50
         IF( A1(I) .LE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A1(I) .LE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A1(I) .LE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A1(I) .LE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A1(I) .LE.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
52     CONTINUE
       PRINT *, '     TEST ITEM NO. 2      '
       PRINT *, '     .LE. OPERATION       '
       PRINT *,F

       DO 53 I=1,50
         IF( A1(I) .NE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A1(I) .NE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A1(I) .NE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A1(I) .NE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A1(I) .NE.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
53     CONTINUE
       PRINT *, '     TEST ITEM NO. 3      '
       PRINT *, '     .NE. OPERATION       '
       PRINT *,F

       DO 54 I=1,50
         IF( A1(I) .EQ. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A1(I) .EQ. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A1(I) .EQ. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A1(I) .EQ. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A1(I) .EQ.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
54     CONTINUE
       PRINT *, '     TEST ITEM NO. 4      '
       PRINT *, '     .EQ. OPERATION       '
       PRINT *,F

       DO 55 I=1,50
         IF( A1(I) .GE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A1(I) .GE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A1(I) .GE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A1(I) .GE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A1(I) .GE.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
55     CONTINUE
       PRINT *, '     TEST ITEM NO. 5      '
       PRINT *, '     .GE. OPERATION       '
       PRINT *,F

       DO 56 I=1,50
         IF( A1(I) .GT. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A1(I) .GT. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A1(I) .GT. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A1(I) .GT. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A1(I) .GT.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
56     CONTINUE
       PRINT *, '     TEST ITEM NO. 6      '
       PRINT *, '     .GT. OPERATION       '
       PRINT *,F
       RETURN
       END
       SUBROUTINE SUBA2( A2,NN )
       REAL*4             A2(NN)
       REAL*8 A(50),B(50),C(50),D(50),E(50),F(50)
       DATA A,B,C,D,E/50*6.,50*5.,50*4.,50*3.,50*2./
       PRINT *, '========== SUBA1 ========== ENTERED ========='
       DO 151 I=1,50
         A2(I)=I
151    CONTINUE

       DO 51 I=1,50
         IF( A2(I) .LT. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A2(I) .LT. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A2(I) .LT. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A2(I) .LT. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A2(I) .LT.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
51     CONTINUE
       PRINT *, '     TEST ITEM NO. 1      '
       PRINT *, '     .LT. OPERATION       '
       PRINT *,F

       DO 52 I=1,50
         IF( A2(I) .LE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A2(I) .LE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A2(I) .LE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A2(I) .LE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A2(I) .LE.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
52     CONTINUE
       PRINT *, '     TEST ITEM NO. 2      '
       PRINT *, '     .LE. OPERATION       '
       PRINT *,F

       DO 53 I=1,50
         IF( A2(I) .NE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A2(I) .NE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A2(I) .NE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A2(I) .NE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A2(I) .NE.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
53     CONTINUE
       PRINT *, '     TEST ITEM NO. 3      '
       PRINT *, '     .NE. OPERATION       '
       PRINT *,F

       DO 54 I=1,50
         IF( A2(I) .EQ. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A2(I) .EQ. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A2(I) .EQ. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A2(I) .EQ. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A2(I) .EQ.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
54     CONTINUE
       PRINT *, '     TEST ITEM NO. 4      '
       PRINT *, '     .EQ. OPERATION       '
       PRINT *,F

       DO 55 I=1,50
         IF( A2(I) .GE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A2(I) .GE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A2(I) .GE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A2(I) .GE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A2(I) .GE.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
55     CONTINUE
       PRINT *, '     TEST ITEM NO. 5      '
       PRINT *, '     .GE. OPERATION       '
       PRINT *,F

       DO 56 I=1,50
         IF( A2(I) .GT. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A2(I) .GT. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A2(I) .GT. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A2(I) .GT. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A2(I) .GT.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
56     CONTINUE
       PRINT *, '     TEST ITEM NO. 6      '
       PRINT *, '     .GT. OPERATION       '
       PRINT *,F
       RETURN
       END
       SUBROUTINE SUBA3( A3,NN )
       REAL*8             A3(NN)
       REAL*8 A(50),B(50),C(50),D(50),E(50),F(50)
       DATA A,B,C,D,E/50*6.,50*5.,50*4.,50*3.,50*2./
       PRINT *, '========== SUBA1 ========== ENTERED ========='
       DO 151 I=1,50
         A3(I)=I
151    CONTINUE

       DO 51 I=1,50
         IF( A3(I) .LT. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A3(I) .LT. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A3(I) .LT. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A3(I) .LT. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A3(I) .LT.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
51     CONTINUE
       PRINT *, '     TEST ITEM NO. 1      '
       PRINT *, '     .LT. OPERATION       '
       PRINT *,F

       DO 52 I=1,50
         IF( A3(I) .LE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A3(I) .LE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A3(I) .LE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A3(I) .LE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A3(I) .LE.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
52     CONTINUE
       PRINT *, '     TEST ITEM NO. 2      '
       PRINT *, '     .LE. OPERATION       '
       PRINT *,F

       DO 53 I=1,50
         IF( A3(I) .NE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A3(I) .NE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A3(I) .NE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A3(I) .NE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A3(I) .NE.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
53     CONTINUE
       PRINT *, '     TEST ITEM NO. 3      '
       PRINT *, '     .NE. OPERATION       '
       PRINT *,F

       DO 54 I=1,50
         IF( A3(I) .EQ. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A3(I) .EQ. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A3(I) .EQ. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A3(I) .EQ. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A3(I) .EQ.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
54     CONTINUE
       PRINT *, '     TEST ITEM NO. 4      '
       PRINT *, '     .EQ. OPERATION       '
       PRINT *,F

       DO 55 I=1,50
         IF( A3(I) .GE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A3(I) .GE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A3(I) .GE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A3(I) .GE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A3(I) .GE.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
55     CONTINUE
       PRINT *, '     TEST ITEM NO. 5      '
       PRINT *, '     .GE. OPERATION       '
       PRINT *,F

       DO 56 I=1,50
         IF( A3(I) .GT. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( A3(I) .GT. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( A3(I) .GT. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( A3(I) .GT. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( A3(I) .GT.  50 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
             E(I)=D(I)+D(I)+I
         ENDIF
       F(I)=A(I)+B(I)+C(I)+D(I)
56     CONTINUE
       PRINT *, '     TEST ITEM NO. 6      '
       PRINT *, '     .GT. OPERATION       '
       PRINT *,F
       RETURN
       END
