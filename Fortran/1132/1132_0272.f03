!             CVCT6036            LEVEL=2        DATE=85.03.20
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6036                                   *C
!*  2. PURPOSE        :  INTERACTIVE VECTORIZER                     *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  VMSG,VTUNE,OR VPINTVCT                     *C
!*  5. HISTORY        :  1985.03.20                                 *C
!********************************************************************C
PROGRAM CV6036
  type st1
     REAL A(100),B(100),C(100),D(100),E(100),F(100),G(100)
     REAL P(100,100),Q(100,100),R(100,100)
     LOGICAL LA(100),LB(100),LC(100)
  end type st1
  type(st1) :: str
  DATA str%A/100*0./,str%B/100*0./,str%C/100*0./,str%D/100*0./,str%E/100*0./
  DATA str%LA/50*.TRUE.,50*.FALSE./,str%LB/50*.TRUE.,50*.FALSE./
  DATA str%LC/50*.TRUE.,50*.FALSE./
  !
  !    TRUE RATIO OF INNER DO LOOP
  !
  DO  I=1,100
     IF(str%LA(I)) THEN
        str%A(I) = 1.0
        DO  J=1,100
           str%P(I,J) = I+J
11         CONTINUE
        enddo
        str%B(I) = I
     ENDIF
10   CONTINUE
  enddo
  write(6,1) str%A
  write(6,1) str%B
  write(6,1) str%P
  write(6,*)
  !
  !    TRUE RATIO OF INNER DO LOOP
  !
  DO  I=1,100
     IF(str%LC(I)) THEN
        str%F(I) = I
        IF(str%LB(I)) GO TO 110
        DO  J=1,100
           str%P(I,J) = I+J
111        CONTINUE
        enddo
110     str%B(I) = I
     ENDIF
100  CONTINUE
  enddo
  write(6,1) str%B
  write(6,1) str%F
  write(6,1) str%P
  write(6,*)
  !
  !    TRUE RATIO OF INNER DO LOOP
  !
  DO  I=1,100
     !VOCL STMT,IF(40)
     IF(str%LA(I)) THEN
        str%A(I) = 1.0
        DO  J=1,100
           str%P(I,J) = I+J
21         CONTINUE
        enddo
        GO TO 23
     ELSE
        str%C(I) = 1.0
        DO  J=1,100
           str%Q(I,J) = I
22         CONTINUE
        enddo
        str%D(I) = I
     ENDIF
23   CONTINUE
20   CONTINUE
  enddo
  write(6,1) str%C
  write(6,1) str%D
  write(6,1) str%P
  write(6,1) str%Q
  write(6,*)
  !
  !    TRUE RATIO OF INNER DO LOOP
  !
  !       EXECUTION COUNT OF INNER DO LOOP(DO 35) ===> 36
  !
  DO  I=1,100
     !VOCL STMT,IF(60) GO TO 33
     IF(str%LA(I)) GO TO 33
     !VOCL STMT,IF(60) GO TO 31
     IF(str%LB(I)) GO TO 31
     GO TO 30
33   CONTINUE
     !VOCL STMT,IF(20) GO TO 31
     IF(str%LC(I)) GO TO 31
     GO TO 30
31   DO  J=1,100
35      str%R(I,J) = str%P(I,J)
     enddo
     str%E(I) = str%F(I)
     str%G(I) = SQRT(str%E(I))
30   CONTINUE
  enddo
  !
  WRITE(6,1) (str%A(I),I=1,100)
  WRITE(6,2) (str%G(I),I=1,100)
  WRITE(6,1) (str%R(I,1),I=1,100)
1 format(10f8.2)
  2 format(8f10.5)
  STOP
END PROGRAM CV6036
