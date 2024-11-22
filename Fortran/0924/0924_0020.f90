
REAL*2,PARAMETER :: R(6)=[1.0,2.0,3.0,4.0,5.0,6.0]
COMPLEX(KIND=2),PARAMETER :: C(3)=[(1.0,2.0),(2.0,3.0),(3.0,4.0)]

REAL*2,PARAMETER::A1(6)=EOSHIFT(R,SHIFT=-2,BOUNDARY=5.0_2)
COMPLEX(KIND=2),PARAMETER :: A2(3)=EOSHIFT(C,SHIFT=-2,BOUNDARY=(4.0_2,5.6_2))
REAL*2::X1(6)
COMPLEX(KIND=2)::X2(3)
X1=EOSHIFT(R,SHIFT=-2,BOUNDARY=5.0_2)
X2=EOSHIFT(C,SHIFT=-2,BOUNDARY=(4.0_2,5.6_2))
END

