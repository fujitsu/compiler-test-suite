!ocl loop_nofusion
module mm
  type st1
     REAL*8 DA(10,10),DB(10,10),DC(10,10)
     REAL*4 RA(10,10),RB(10,10),RC(10,10)
     LOGICAL LA(10),LB(10),LC(10)
  end type st1
  type(st1) :: str
end module mm
!             CVCT6030            LEVEL=3        DATE=84.03.15
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6030                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . ISDRATIO ( COMBINATION OF EX AND RC MASK )C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  VTUNE                                      *C
!*  5. HISTORY        :  1984.1.05                                  *C
!********************************************************************C
PROGRAM CV6030
  use mm
  N=10
  CALL INIT(N)
  CALL TEST1(N)
  CALL TEST2(N)
  CALL TEST3(N)
  CALL TEST4(N)
  !
  WRITE(6,*) str%RA
  WRITE(6,*) str%DA
  STOP
END PROGRAM CV6030
!ocl loop_nofusion
SUBROUTINE INIT(N)
  use mm
  !
  !
  DO  I=1,N
     DO  J=1,N
        str%DA(J,I) = I + J
        str%DB(J,I) = I - J
        str%DC(J,I) = I * J
        str%RA(J,I) = I + J
        str%RB(J,I) = I - J
        str%RC(J,I) = I * J
     enddo
  enddo
  !
  DO  I=1,N,2
     str%LA(I) = .TRUE.
     str%LB(I) = .FALSE.
     str%LC(I) = str%LA(I)
     str%LA(I+1) = .FALSE.
     str%LB(I+1) = .TRUE.
     str%LC(I+1) = str%LA(I)
20   CONTINUE
  enddo
  RETURN
END SUBROUTINE INIT
!ocl loop_nofusion
SUBROUTINE TEST1(N)
  use mm
  !
  !  EX - EX
  !
  DO  I=1,N
     IF(str%LA(I)) GO TO 10
     IF(str%LB(I)) GO TO 10
     str%DA(I,I) = str%DB(I,I) + str%DC(I,I)
10   CONTINUE
  enddo
  !
  !  EX - RC
  !
  DO  J=1,N
     IF(str%LA(J)) THEN
        IF(str%LB(5)) THEN
           str%RA(J,J) = str%RB(J,J) + str%RC(J,J)
        ENDIF
     ENDIF
20   CONTINUE
  enddo
  !
  !  RC - EX
  !
  DO  J=1,N
     IF(str%LA(5)) THEN
        IF(str%LB(J)) THEN
           str%RA(J,J) = str%RB(J,J) * str%RC(J,J)
        ENDIF
     ENDIF
30   CONTINUE
  enddo
  !
  !  RC - RC
  !
  DO  J=1,N
     IF(str%LA(4)) THEN
        IF(str%LB(6)) THEN
           str%RA(J,J) = str%RB(J,J) * str%RC(J,J)
        ENDIF
     ENDIF
40   CONTINUE
  enddo
  !
  ! EX OR EX
  !
  DO  I=1,N
     IF(str%LA(I)) GO TO 51
     GO TO 52
51   IF(str%LB(I)) GO TO 53
     GO TO 50
52   IF(str%LC(I)) GO TO 50
53   str%DA(I,I) = str%DB(I,I) + str%DC(I,I)
50   CONTINUE
  enddo
  !
  ! RC OR RC
  !
  DO  I=1,N
     IF(str%LA(2)) GO TO 61
     GO TO 62
61   IF(str%LB(3)) GO TO 63
     GO TO 60
62   IF(str%LC(3)) GO TO 60
63   str%DA(I,I) = str%DB(I,I) * str%DC(I,I)
60   CONTINUE
  enddo
  !
  ! RC OR EX
  !
  DO  I=1,N
     IF(str%LA(I)) GO TO 71
     GO TO 72
71   IF(str%LB(3)) GO TO 73
     GO TO 70
72   IF(str%LC(I)) GO TO 70
73   str%RA(I,I) = str%RB(I,I) - str%RC(I,I)
70   CONTINUE
  enddo
  RETURN
END SUBROUTINE TEST1
!ocl loop_nofusion
SUBROUTINE TEST2(N)
  use mm
  !
  ! RC OR EX
  !
  DO  I=1,N
     IF(str%LA(I)) GO TO 71
     GO TO 72
71   IF(str%LB(3)) GO TO 73
     GO TO 70
72   IF(str%LC(I)) GO TO 70
     !
73   DO  J=1,N
        IF(str%LA(J)) GO TO 61
        GO TO 62
61      IF(str%LB(I)) GO TO 63
        GO TO 60
62      IF(str%LC(J)) GO TO 60
63      str%DA(J,I) = str%DB(J,I) + str%DC(J,I)
        str%RA(J,I) = str%RB(J,I) + str%RC(J,I)
60      CONTINUE
     enddo
     !
70   CONTINUE
  enddo
  RETURN
END SUBROUTINE TEST2
!ocl loop_nofusion
SUBROUTINE TEST3(N)
  use mm
  !
  !  EX - EX
  !
  DO  I=1,N
     IF(str%LA(I)) GO TO 10
     IF(str%LB(I)) GO TO 10
     str%DA(I,I) = str%DB(I,I) + str%DC(I,I)
10   CONTINUE
  enddo
  !
  !  EX - RC
  !
  DO  J=1,N
     IF(str%LA(J)) THEN
        IF(str%LB(5)) THEN
           str%RA(J,J) = str%RB(J,J) + str%RC(J,J)
        ENDIF
     ENDIF
20   CONTINUE
  enddo
  !
  !  RC - EX
  !
  DO  J=1,N
     IF(str%LA(5)) THEN
        IF(str%LB(J)) THEN
           str%RA(J,J) = str%RB(J,J) * str%RC(J,J)
        ENDIF
     ENDIF
30   CONTINUE
  enddo
  !
  !  RC - RC
  !
  DO  J=1,N
     IF(str%LA(4)) THEN
        IF(str%LB(6)) THEN
           str%RA(J,J) = str%RB(J,J) * str%RC(J,J)
        ENDIF
     ENDIF
40   CONTINUE
  enddo
  !
  ! EX OR EX
  !
  DO  I=1,N
     IF(str%LA(I)) GO TO 51
     GO TO 52
51   IF(str%LB(I)) GO TO 53
     GO TO 50
52   IF(str%LC(I)) GO TO 50
53   str%DA(I,I) = str%DB(I,I) + str%DC(I,I)
50   CONTINUE
  enddo
  !
  ! RC OR RC
  !
  DO  I=1,N
     IF(str%LA(2)) GO TO 61
     GO TO 62
61   IF(str%LB(3)) GO TO 63
     GO TO 60
62   IF(str%LC(3)) GO TO 60
63   str%DA(I,I) = str%DB(I,I) + str%DC(I,I)
60   CONTINUE
  enddo
  !
  ! RC OR EX
  !
  DO  I=1,N
     IF(str%LA(I)) GO TO 71
     GO TO 72
71   IF(str%LB(3)) GO TO 73
     GO TO 70
72   IF(str%LC(I)) GO TO 70
73   str%RA(I,I) = str%RB(I,I) - str%RC(I,I)
70   CONTINUE
  enddo
  RETURN
END SUBROUTINE TEST3
!ocl loop_nofusion
SUBROUTINE TEST4(N)
  use mm
  !
  ! RC OR EX
  !
  DO  I=1,N
     IF(str%LA(I)) GO TO 71
     GO TO 72
71   IF(str%LB(3)) GO TO 73
     GO TO 70
72   IF(str%LC(I)) GO TO 70
     !
73   DO  J=1,N
        IF(str%LA(J)) GO TO 61
        GO TO 62
61      IF(str%LB(I)) GO TO 63
        GO TO 60
62      IF(str%LC(J)) GO TO 60
63      str%DA(J,I) = str%DB(J,I) + str%DC(J,I)
        str%RA(J,I) = str%RB(J,I) * str%RC(J,I)
60      CONTINUE
     enddo
     !
70   CONTINUE
  enddo
  RETURN
END SUBROUTINE TEST4
