!             CVCT6033            LEVEL=2        DATE=84.03.22
!****************************************************************C
!   1. PROGRAM NAME   :  CVCT6033                                C
!   2. PURPOSE        :  INTERFACE FOR INTERACTIVE VECTORIZER    C
!   3. RESULTS        :                                          C
!   4. ENVIRONMENT    :  VTUNE ,VMSG,OR VPINTVCT                 C
!   5. HISTORY        :  1984.03.15 N1127                        C
!****************************************************************C
PROGRAM CV6033
  type st1
     REAL      A(10),B(10),C(10),D(10)
     LOGICAL*4 LA(10),LB(10),LC(10),LD(10)
  end type st1
  type(st1) :: str
  DATA str%A/1,2,3,4,5,6,7,8,9,10/
  DATA str%B/-4,-3,-2,-1,0,1,2,3,4,5/
  DATA str%C/-4,-3,-2,-1,0,1,2,3,4,5/
  DATA str%D/-4,3,-2,-1,0,1,-2,3,-4,5/
  DATA str%LA/5*.TRUE.,5*.FALSE./,N/10/
  DATA str%LB/5*.FALSE.,5*.FALSE./
  DATA str%LC/5*.TRUE.,5*.FALSE./
  DATA str%LD/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./
  !
  !  ELSE , ENDIF
  !
  DO  I=1,N
     IF ( str%LA(I) ) THEN
        IF ( str%LB(I) ) THEN
           IF ( str%LC(I) ) THEN
              str%A(I) = str%B(I)
           ENDIF
        ENDIF
     ENDIF
     !
     IF ( str%A(I).NE.str%B(I)) THEN
     ELSE
        IF(str%LA(I)) THEN
           str%C(I) = str%D(I)
        ELSE
        ENDIF
     ENDIF
10   CONTINUE
  enddo
  WRITE(6,*) ' str%A  = ',str%A
  WRITE(6,*) ' str%C  = ',str%C
  DO  I=1,N
     IF ( str%LA(I) ) THEN
     ELSE
     ENDIF
     IF(str%LB(I)) THEN
     ELSE
     ENDIF
     !
     IF ( str%A(I).NE.str%B(I)) THEN
        IF(str%LA(I)) THEN
           str%C(I) = str%D(I)
        ELSE
        ENDIF
     ELSE
     ENDIF
11   CONTINUE
  enddo
  WRITE(6,*) ' str%A  = ',str%A
  WRITE(6,*) ' str%C  = ',str%C
  !
  !  CONTINUE
  !
  DO  I=1,N
     IF(str%LB(I)) THEN
        CONTINUE
        CONTINUE
        CONTINUE
     ELSE
        str%A(I) = str%B(I)
        CONTINUE
     ENDIF
     CONTINUE
     str%C(I) = str%D(I)
     CONTINUE
20   CONTINUE
  enddo
  WRITE(6,*) ' str%A = ' ,str%A
  !
  DO  I=1,N
     IF(str%LB(I)) THEN
        CONTINUE
22      CONTINUE
        CONTINUE
     ELSE
        str%A(I) = str%B(I)
        CONTINUE
     ENDIF
23   CONTINUE
     str%C(I) = str%D(I)
     CONTINUE
24   CONTINUE
25   CONTINUE
     CONTINUE
21   CONTINUE
  enddo
  WRITE(6,*) ' str%A = ' ,str%A
  WRITE(6,*) ' str%C = ' ,str%C
  !
  !  GO TO
  !
  DO  I=1,N
     GO TO 31
31   str%A(I) = str%B(I)
     GO TO 32
32   CONTINUE
     GO TO 33
33   str%C(I) = str%D(I)
     GO TO 34
34   GO TO 35
35   GO TO 36
36   str%A(I) = str%C(I)
     IF(str%LA(I)) THEN
        str%A(I) = str%B(I)
        IF(str%LD(I)) THEN
           GO TO 37
        ELSE
           GO TO 38
        ENDIF
37      str%C(I) = str%D(I)
        GO TO 30
38      CONTINUE
     ELSE
        GO TO 39
39      GO TO 30
     ENDIF
30   CONTINUE
  enddo
  WRITE(6,*) ' str%A = ',str%A
  WRITE(6,*) ' str%C = ',str%C
  STOP
END PROGRAM CV6033
