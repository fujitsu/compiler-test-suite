module mm
  type st1
     REAL*8  DA(100),DB(100),DC(100),DD(100)
     REAL*4  RA(100),RB(100),RC(100),RD(100)
     LOGICAL LA(100),LB(100),LC(100),LD(100)
     INTEGER IN(5)/10,20,30,40,50/
  end type st1
  type(st1) :: str
end module mm

!             CVCT6029            LEVEL=3        DATE=84.04.16
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6029                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . NESTED DO LOOPS  ( ISDRATIO )            *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  VTUNE                                      *C
!*  5. HISTORY        :  1984.3.15                                  *C
!********************************************************************C
PROGRAM CV6029
  !
  N = 100
  CALL       INIT(N)
  CALL TEST1(N)
  write(6,*)
  CALL TEST2()
  write(6,*)
  CALL TEST3(N)
  write(6,*)
  CALL TEST4()
  STOP
END PROGRAM CV6029
SUBROUTINE INIT(N)
  use mm
  !
  DO  I=1,N
     str%DA(I) = 0.
     str%DB(I) = 1.
     str%DC(I) = 2.
     str%DD(I) = 3.
     str%RA(I) = 0.
     str%RB(I) = 1.
     str%RC(I) = 2.
     str%RD(I) = 3.
  enddo
  DO  J=1,N,2
     str%LA(J) = .TRUE.
     str%LA(J+1) = .FALSE.
     str%LB(J) = .TRUE.
     str%LB(J+1) = .FALSE.
     str%LC(J) = .TRUE.
     str%LC(J+1) = .FALSE.
     str%LD(J) = .TRUE.
     str%LD(J+1) = .FALSE.
  enddo
  RETURN
END SUBROUTINE INIT
SUBROUTINE TEST1(N)
  use mm
  !
  DO  I=1,N
     IF(str%LA(I)) THEN
        DO  J=1,N
           str%DA(J) = str%DB(J) + str%DC(J)
20         CONTINUE
        enddo
     ENDIF
10   CONTINUE
  enddo
  WRITE(6,1) str%DA
  !
  !   S - V
  !
  DO  I=1,N
     IF(str%LA(I)) THEN
        DO  J=1,N
           str%DA(J) = str%DB(J) + str%DC(J)
40         CONTINUE
        enddo
     ENDIF
30   CONTINUE
  enddo
  WRITE(6,1) str%DA
  !
  !   V - S
  !
  DO  I=1,N
     IF(str%LA(I)) THEN
        str%RA(I) = SQRT(str%RB(I)) + SQRT(str%RC(I))
        str%RA(I) = str%RA(I)**3
        DO  J=2,N
           str%DA(J) = str%DA(J-1) + str%DC(J)
60         CONTINUE
        enddo
     ENDIF
50   CONTINUE
  enddo
  WRITE(6,1) str%RA
  WRITE(6,1) str%DA
  !
  !   S - S
  !
  DO  I=1,N
     IF(str%LA(I)) THEN
        DO  J=2,N
           str%DA(J) = str%DA(J-1) + str%DC(J)
80         CONTINUE
        enddo
     ENDIF
70   CONTINUE
  enddo
  WRITE(6,1) str%DA
  1 format(10f9.3)
  RETURN
END SUBROUTINE TEST1
SUBROUTINE TEST2()
  use mm
  !ocl iterations(max=200)
  DO  I=1,str%IN(1)
     IF(str%LA(I)) THEN
        !ocl iterations(max=300)
        DO  J=1,str%IN(2)
           str%DA(J) = str%DB(J) + str%DC(J)
        enddo
     ENDIF
  enddo
  WRITE(6,1) str%DA
  !
  !   S - V
  !
  !ocl iterations(max=400)
  DO  I=1,str%IN(3)
     IF(str%LB(I)) THEN
        !ocl iterations(max=500)
        DO  J=1,str%IN(4)
           str%DA(J) = str%DB(J) + str%DC(J)
        enddo
     ENDIF
  enddo
  WRITE(6,1) str%DA
  !
  !   V - S
  !
  !ocl iterations(max=500)
  DO  I=1,str%IN(5)
     IF(str%LA(I)) THEN
        str%RA(I) = SQRT(str%RB(I)) + SQRT(str%RC(I))
        str%RA(I) = str%RA(I)**3
        !ocl iterations(max=250)
        DO  J=2,str%IN(1)
           str%DA(J) = str%DA(J-1) + str%DC(J)
        enddo
     ENDIF
  enddo
  WRITE(6,1) str%RA
  WRITE(6,1) str%DA
  !
  !   S - S
  !
  !ocl iterations(max=350)
  DO  I=1,str%IN(3)
     IF(str%LC(I)) THEN
        !ocl iterations(max=150)
        DO  J=2,str%IN(4)
           str%DA(J) = str%DA(J-1) + str%DC(J)
        enddo
     ENDIF
  enddo
  WRITE(6,1) str%DA
  1 format(10f9.3)

  RETURN
END SUBROUTINE TEST2
SUBROUTINE TEST3(N)
  use mm
  !
  DO  I=1,N
     IF(str%LA(I)) THEN
        DO  J=1,N
           IF(str%LB(J)) THEN
              DO  K=1,N
                 IF(str%LC(K)) THEN
                    DO  L=1,N
                       str%DA(L) = str%DB(L) + str%DC(L)
                    enddo
                 ENDIF
              enddo
           ENDIF
        enddo
     ENDIF
  enddo
  WRITE(6,1) str%DA
    1 format(10f9.3)

  RETURN
END SUBROUTINE TEST3
SUBROUTINE TEST4()
  use mm
  !
  !ocl iterations(max=10)
  DO  I=1,str%IN(1)
     IF(str%LA(I)) THEN
        !ocl iterations(max=20)
        DO  J=1,str%IN(2)
           IF(str%LB(J)) THEN
              !ocl iterations(max=30)
              DO  K=1,str%IN(3)
                 IF(str%LC(K)) THEN
                    !ocl iterations(max=40)
                    DO  L=1,str%IN(4)
                       str%DA(L) = str%DB(L) + str%DC(L)
                    enddo
                 ENDIF
              enddo
           ENDIF
        enddo
     ENDIF
  enddo
  WRITE(6,1) str%DA
    1 format(10f9.3)

  RETURN
END SUBROUTINE TEST4
