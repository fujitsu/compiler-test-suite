      DOUBLE PRECISION A(60),B(20),T
      DATA A,B/60*2.0,20*-2.0/
      INTEGER I

      DO 10 I=1,10
         A(I+45)=        B(I+3)+B(I+4)+B(I+1)+B(I+9)+B(I+6)
         A(I+44)=A(I+42)+B(I)
         A(I+42)=        B(I+0)+B(I+7)+B(I+8)+B(I+5)+B(I+2)
         A(I+41)=A(I+39)+B(I)
         A(I+39)=        B(I+1)+B(I+9)+B(I+7)+B(I+5)+B(I+9)
         A(I+38)=A(I+36)+B(I)
         A(I+36)=        B(I+3)+B(I+2)+B(I+1)+B(I+3)+B(I+8)
         A(I+35)=A(I+33)+B(I)
         A(I+33)=        B(I+8)+B(I+5)+B(I+6)+B(I+2)+B(I+0)
         A(I+32)=A(I+30)+B(I)
         A(I+30)=        B(I+3)+B(I+7)+B(I+1)+B(I+2)+B(I+8)
         A(I+29)=A(I+27)+B(I)
         A(I+27)=        B(I+7)+B(I+3)+B(I+5)+B(I+9)+B(I+0)
         A(I+26)=A(I+24)+B(I)
         A(I+24)=        B(I+5)+B(I+1)+B(I+9)+B(I+6)+B(I+6)
         A(I+23)=A(I+21)+B(I)
         A(I+21)=        B(I+0)+B(I+6)+B(I+3)+B(I+8)+B(I+2)
         A(I+20)=A(I+18)+B(I)
         A(I+18)=        B(I+2)+B(I+1)+B(I+7)+B(I+1)+B(I+9)
         A(I+17)=A(I+15)+B(I)
         A(I+15)=        B(I+1)+B(I+5)+B(I+3)+B(I+1)+B(I+6)
         A(I+14)=A(I+12)+B(I)
         A(I+12)=        B(I+1)+B(I+1)+B(I+1)+B(I+1)+B(I+1)
         A(I+11)=A(I+ 9)+B(I)
         A(I+ 9)=        B(I+1)+B(I+9)+B(I+8)+B(I+7)+B(I+6)
         A(I+ 8)=A(I+ 6)+B(I)
         A(I+ 6)=        B(I+1)+B(I+9)+B(I+8)+B(I+7)+B(I+7)
         A(I+ 5)=A(I+ 3)+B(I)
         A(I+ 3)=        B(I+1)+B(I+9)+B(I+8)+B(I+8)+B(I+8)
         A(I+ 2)=A(I+ 0)+B(I)
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
