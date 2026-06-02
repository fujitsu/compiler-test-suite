!             CVCT6035            LEVEL=2        DATE=84.04.19
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6035                                   *C
!*  2. PURPOSE        :  INTERACTIVE VECTORIZER                     *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  VMSG,VTUNE,OR VPINTVCT                     *C
!*  5. HISTORY        :  1984.04.19                                 *C
!********************************************************************C
PROGRAM CV6035
  type st1
     REAL A(500),B(500),C(1000)
     LOGICAL LA(500),LB(500),LC(1000),LD(1000)
  end type st1
  type(st1) :: str
  DATA str%A/500*0./,str%B/500*0./
  DATA N/500/,str%LA/250*.TRUE.,250*.FALSE./,str%LB/250*.TRUE.,250*.FALSE./
  DATA str%C/1000*0./,str%LC/500*.TRUE.,500*.FALSE./
  DATA str%LD/500*.TRUE.,500*.FALSE./
  !
  !    PC76144      ISDTRUE FOR ENDIF STATEMENT
  !
  DO  I=1,10
     IF(str%LA(I)) THEN
        IF(str%LB(I)) THEN
           str%A(I) = 1.0
        ENDIF
     ELSE
     ENDIF
10   CONTINUE
  enddo
  !
  !    PC76196 ITERATION COUNT OF INNER DO LOOP
  !
  DO  I=1,N
     IF(str%LA(I)) THEN
        DO  J=1,100
           str%A(J) = J
21         CONTINUE
        enddo
     ENDIF
20   CONTINUE
  enddo
  !
  !   PC 76197       ISDRATIO FOR GO TO STATEMENT
  !
  DO  I=1,N
     IF(str%LA(I)) THEN
        str%A(I) = str%B(I)
        GO TO 30
     ELSE
        str%A(I) = -str%B(I)
     ENDIF
30   CONTINUE
  enddo
  !
  !   PC 76147   250/2 = 120 ??
  !
  DO  I=1,1000
     !VOCL STMT,IF(25)
     IF(str%LC(I)) THEN
        IF(str%LD(I)) THEN
           str%C(I) = I
        ENDIF
     ENDIF
40   CONTINUE
  enddo
  !
  !   PC         TRUE RATIO SPECIFICATION FOR IF-THEN-ELSE
  !
  DO  I=1,500
     !VOCL STMT,IF(10)
     IF(str%LA(I)) THEN
        str%A(I) = I
     ELSE
        str%B(I) = -I
     ENDIF
50   CONTINUE
  enddo
  !
  !   PC76195     ITERATION COUNT FOR UNVECTORIZABLE DO LOOP
  !
  DO  I=1,500
     ASSIGN 70 TO K
60   CONTINUE
  enddo
  !
  !   PC76194      EXECUTION COUNT FOR IF STATEMENT HAVING TRAILER
  !
  DO  I=1,500
     IF(str%LA(I)) str%A(I) = str%B(I)
70   CONTINUE
  enddo
  WRITE(6,*) str%A
  WRITE(6,*) str%B
  STOP
END PROGRAM CV6035
