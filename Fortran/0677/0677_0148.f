        REAL*4 A,AA(10),S/4.23598766E+28/
        REAL*8 B,BB(10),SD/1234.0D-48/
        REAL*8 C ,CC(10)
        INTEGER*4 D ,DD(10)
        COMPLEX*8 E,EE(10)
        COMPLEX*16 F,FF(10)
        LOGICAL*4 L
        A=1.12345678901E+25
        B=13456.1234567890123456789D+13
        C=1234.2D-25
        D=1028
        E=(1,2)
        F=(1.2,2E+10)
        WRITE(6,*) A,B,C,D,E,F
        L=A.GT.B
        WRITE(6,*) '*** (%) ** (..) JJJJJJ , (1.) . 123    '
        WRITE(6,*) ' (,1) (2.0,E) 12.+ (1.2E- , 1) ((1.2 .))  6143REV '
        WRITE(6,*) A,B,L,' 12345.-1 ',' (1.0,,)',' 1.E+E',' 9876143REV '
        DO 10 I=1,10
        AA(I)=A/S
        BB(I)=B/S *SD
        CC(I)=C/S
        DD(I)=D/S
        EE(I)=E/S
        FF(I)=I/S *SD
10         CONTINUE
        WRITE(6,*) SD,S,AA,BB,CC,DD,EE,FF
        STOP
            END
