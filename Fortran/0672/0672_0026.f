      INTEGER  SW2

         SW2 = 1
         CALL  SUB ('SUB-1',SW2)

         SW2   = 2
         CALL  SUB ('SUB-2',SW2)

         SW2   = 3
         CALL  SUB ('SUB-3',SW2)

         SW2   = 4
         CALL  SUB ('SUB-4',SW2)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW2)
      character(*)  MEMO
      INTEGER       SW2
      COMPLEX       C1,C2,C3,C4
      NAMELIST      /NAMEL/ C1,C2,C3,C4,
     *                      I ,J ,K ,L ,
     *                      A ,B ,C ,D ,E ,F ,
     *                      X

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         C1    = (0. , 0.)
         C2    = (0. , 0.)
         C3    = (0. , 0.)
         C4    = (0. , 0.)
         I     = 0
         J     = 0
         K     = 0
         L     = 0
         A     = 2.0
         B     = A + 1.0 - 2.0
         C     = A / 2.0
         D     = C + 1.0
         E     = 0
         F     = 0
         X     = 0

    2 CONTINUE
         SW2   = MOD(SW2 , 4 ) + 1
         X     = A + B + C + D
         X     = X / 2.0 * 2.0
         GO TO (3 ,5 ,6 ,9) , SW2
    3 CONTINUE
         C1    = CMPLX(A+B , C+D)
         C2    = CMPLX(A-B , C-D)
         C3    = C1 - C2
         C4    = C1 + C2
    4 CONTINUE
         E     = REAL(C3)
         F     = AIMAG(C4)
         I     = A + 1
         J     = B + 2
         K     = C * 3 + D
         GO TO 2
    5 CONTINUE
         C1    = CMPLX(A-B , C-D)
         C2    = CMPLX(A+B , C+D)
         GO TO 2
    6 CONTINUE
         C1    = CMPLX(A-B , C+D)
         C2    = CMPLX(A-B , C-D)
         C3    = C1 * C2
         C4    = C1 / C2
    7 CONTINUE
         I     = CMPLX(A+B , C-D)
         J     = CMPLX(A-B , C+D)
         K     = C1 * C2
         L     = C1 / C2
    8 CONTINUE
         I     = A + 1
         J     = B + 2
         K     = C * 3 + D
         GO TO 2

    9 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
