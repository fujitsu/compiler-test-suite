COMPLEX(KIND=2),PARAMETER::C2_1= CMPLX((15.5_2,20.5_2),KIND=2)
COMPLEX(KIND=2),PARAMETER::C2_2= CMPLX((15.5,20.5),KIND=2)
COMPLEX(KIND=2),PARAMETER::C2_3= CMPLX((15.5_8,20.5_8),KIND=2)
COMPLEX(KIND=2),PARAMETER::C2_Q= CMPLX((15.5_16,20.5_16),KIND=2)

COMPLEX(KIND=4),PARAMETER::C4_1= CMPLX((15.5_2,20.5_2),KIND=4)
COMPLEX(KIND=8),PARAMETER::C8= CMPLX((15.5_2,20.5_2),KIND=8)
COMPLEX(KIND=16),PARAMETER::C16= CMPLX((15.5_2,20.5_2),KIND=16)

COMPLEX(KIND=2),PARAMETER::C2_6= CMPLX(15.5_2,20.5_2,KIND=2)
COMPLEX(KIND=2),PARAMETER::C2_7= CMPLX(15.5_4,15.5_4,KIND=2)
COMPLEX(KIND=2),PARAMETER::C2_8= CMPLX(15.5_8,15.5_8,KIND=2)
COMPLEX(KIND=2),PARAMETER::C2_Q2= CMPLX(15.5_16,15.5_16,KIND=2)
COMPLEX(KIND=2),PARAMETER::C2_10= CMPLX(50_4,25_2,KIND=2)
COMPLEX(KIND=2),PARAMETER::C2_Q3= CMPLX(50_8,25_1,KIND=2)

COMPLEX(KIND=4)::C4

IF(C4_1 /= (15.500,20.500))PRINT*,"101"
IF(C8 /= (15.500,20.500))PRINT*,"102"
IF(C16 /= (15.500,20.500))PRINT*,"103"

C4=C2_1
IF(C2_1 /= (15.500,20.500))PRINT*,"104",C4
C4=C2_2
IF(C4 /= (15.500,20.500))PRINT*,"105"
C4=C2_3
IF(C4 /= (15.500,20.500))PRINT*,"106"
C4=C2_Q
IF(C4 /= (15.500,20.500))PRINT*,"120"




C4=C2_6
IF(C4 /= (15.500,20.500))PRINT*,"109"
C4=C2_7
IF(C4 /= (15.500,15.500))PRINT*,"110"
C4=C2_8
IF(C4 /= (15.500,15.500))PRINT*,"111"
C4=C2_Q2
IF(C4 /= (15.500,15.500))PRINT*,"121"
C4=C2_10
IF(C4 /= (50,25))PRINT*,"113"
C4=C2_Q3
IF(C4 /= (50,25))PRINT*,"112"


PRINT*,"PASS"
END