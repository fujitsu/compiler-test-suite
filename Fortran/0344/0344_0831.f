      DOUBLE PRECISION A(20),B(20),T
      DATA A,B/20*2.0,20*-3.0/
      REAL*16 C(20)/20*0.0/,U
      INTEGER*2 D(20)/20*1/,V
      LOGICAL*1 E(20)/20*.FALSE./,W
      CHARACTER*20 F(20)/20*'A B C D E F G H I J '/,X
      INTEGER I
      LOGICAL L(10)/.FALSE.,3*.TRUE.,3*.FALSE.,3*.TRUE./

      DO 10 I=1,10
         U=-B(I+1)-C(I)
         V=1-B(I)+D(I)
         V=1+V
         W=.NOT.L(I).OR.E(I)
         W=.NOT.W
         X=F(I)(I+1:I+10)//'ZZZZZZZZZZ'
         T=A(I+10)*B(I)-B(I+1)
         IF (L(I)) THEN
            A(I)=T*A(I)
            C(I+10)=U
            D(I+10)=V
            E(I+10)=W
            F(I+10)=X
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
      WRITE (6,100) C
      WRITE (6,100) D
      WRITE (6,100) E
      WRITE (6,101) F
  100 FORMAT((' ',6G13.5))
  101 FORMAT((' ',A20))
      STOP
      END
