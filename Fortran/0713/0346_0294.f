       REAL*8 A(50),B(50),C(50),D(50),E(50),F(50)
       DATA A,B,C,D,E/50*6.,50*5.,50*4.,50*3.,50*2./
       DO 51 I=1,50
         IF( I .LT. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( I .LT. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( I .LT. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( I .LT. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( I .LT. 50 ) THEN
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
         IF( I .LE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( I .LE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( I .LE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( I .LE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( I .LE. 50 ) THEN
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
         IF( I .NE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( I .NE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( I .NE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( I .NE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( I .NE. 50 ) THEN
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
         IF( I .EQ. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( I .EQ. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( I .EQ. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( I .EQ. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( I .EQ. 50 ) THEN
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
         IF( I .GE. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( I .GE. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( I .GE. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( I .GE. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( I .GE. 50 ) THEN
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
         IF( I .GT. 10 ) THEN
             A(I)=A(I)+A(I)+I
         ELSEIF( I .GT. 20 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
         ELSEIF( I .GT. 30 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
         ELSEIF( I .GT. 40 ) THEN
             A(I)=A(I)+A(I)+I
             B(I)=B(I)+B(I)+I
             C(I)=C(I)+C(I)+I
             D(I)=D(I)+D(I)+I
         ELSEIF( I .GT. 50 ) THEN
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
       STOP
       END
