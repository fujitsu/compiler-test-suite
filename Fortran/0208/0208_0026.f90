COMPLEX(2) :: CMP
COMPLEX(2) :: CMP_DSB(5)


INTEGER(4) :: I1 = 5

COMPLEX(2) :: C2 = (2,3)
COMPLEX(2) :: C2_AR(5) = (3,3)
COMPLEX(16) :: C16(5) = (1,1)

CMP=I1**C2
IF(abs(CMP - (5**(2,3)))>0.01)PRINT*,"33",cmplx(I1**C2),I1,cmplx(C2), (5**(2,3))

CMP_DSB(4)=C2_AR(2)**C16(2)
IF(abs(CMP_DSB(4) - ((3,3)**(1,1)))>0.01)PRINT*,"35",cmplx(C2_AR(2)**C16(2)),cmplx(C2_AR(2)),cmplx(C16(2)),(3,3)**(1,1)

PRINT*,"pass"
END
