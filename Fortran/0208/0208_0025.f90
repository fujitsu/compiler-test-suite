COMPLEX(2) :: C,  CC       = (3,3)
COMPLEX(4) :: D,  DD       = (3,3)

C=CC      **3.0_16
IF(C .NE. ((3,3)**3)) PRINT*,"30", cmplx(cc),cmplx(C) , ((3,3)**3)
C=CC      **3.0_8
IF(C .NE. ((3,3)**3)) PRINT*,"31", cmplx(cc),cmplx(C) , ((3,3)**3)
C=CC      **3.0_4
IF(C .NE. ((3,3)**3)) PRINT*,"32", cmplx(cc),cmplx(C) , ((3,3)**3)
C=DD      **3.0_4
IF(C .NE. ((3,3)**3)) PRINT*,"33", cmplx(dd),cmplx(C) , ((3,3)**3)
D=DD      **3.0_4
IF(D .NE. ((3,3)**3)) PRINT*,"33", cmplx(dd),cmplx(D) , ((3,3)**3)
PRINT*,"pass"
END
