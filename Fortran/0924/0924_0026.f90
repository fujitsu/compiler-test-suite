
REAL*2,PARAMETER::R=3.0
INTEGER,PARAMETER::I=2
REAL*2,PARAMETER::A1=RRSPACING(R)
REAL*2,PARAMETER::A2=RRSPACING(-3.0_2)
REAL*2,PARAMETER::A3=SCALE(R,I)
REAL*2,PARAMETER::A4=SCALE(3.0_2,I)  
REAL*2,PARAMETER::A5=SET_EXPONENT(R,I)
REAL*2,PARAMETER::A6=SET_EXPONENT(3.0_2,I)
REAL*2,PARAMETER::A7=SPACING(R)
REAL*2,PARAMETER::A8=SPACING(-3.0_2)

REAL*2::X1,X2,X3,X4,X5,X6,X7,X8
X1=RRSPACING(R)
X2=RRSPACING(-3.0_2)
X3=SCALE(R,I)
X4=SCALE(-3.0_2,I)
X5=SET_EXPONENT(R,I)
X6=SET_EXPONENT(3.0_2,I)
X7=SPACING(R)
X8=SPACING(-3.0_2)

END



