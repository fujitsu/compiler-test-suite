COMPLEX(2) :: CMP
COMPLEX(2) :: CMP_DSB(5)

REAL(2) :: R2 = 1.0
REAL(2) :: R2_AR(4) = 4
REAL(16) :: R16(5) = 10.0
REAL(16) :: R16x(5) = 3

INTEGER(1) :: I1 = 5
INTEGER(2) :: I4(5) = 2

COMPLEX(2) :: C2 = (2,3)     
COMPLEX(2) :: C2_AR(5) = (10,10)     
COMPLEX(2) :: C2_ARx(5) = (2,2)     
COMPLEX(16) :: C16(5) = (1,1)     

CMP=C2**R2
IF(CMP .NE. ((2,3)**1))PRINT*,"101"

CMP_DSB(2)=C2_ARx(3)**R16x(1)
IF(abs(CMP_DSB(2) -    ((2,2)**3))>0.1)PRINT*,"102",cmplx(CMP_DSB(2),kind=4),((2,2)**3 )

CMP=I1**C2
IF(abs(CMP -    (5**(2,3)))>0.05)PRINT*,"103"

CMP_DSB(3)=C2_AR(1)**I4(1)
IF(CMP_DSB(3) .NE. ((10,10)**2))PRINT*,"104"

CMP_DSB(4)=C2_ARx(2)**C16(2)
IF(abs(CMP_DSB(4) -    ((2,2)**(1,1)))>0.1)PRINT*,"105",cmplx(CMP_DSB(4),kind=4), ((3,3)**(1,1))

CMP_DSB(1)=C2_AR(1)**R2_AR(2)
IF(CMP_DSB(1) .NE. ((10,10)**4))PRINT*,"106"
PRINT*,"PASS"
END
