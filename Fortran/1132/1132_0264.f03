!             CVCT6027            LEVEL=3        DATE=84.04.11
!****************************************************************C
!   1. PROGRAM NAME   :  CVCT6027                                C
!   2. PURPOSE        :  INTERFACE FOR INTERACTIVE VECTORIZER    C
!   3. RESULTS        :  ALL VECTORIZED                          C
!   4. ENVIRONMENT    :  VTUNE ,VMSG,OR VPINTVCT                 C
!   5. HISTORY        :  1982.12.27 N1127                        C
!****************************************************************C
PROGRAM CV6026
  type st1
     REAL*8    A(10),B(10),C(10),D(10)
     LOGICAL*4 LA(10),LB(10),LC(10),LD(10)
  end type st1
  type(st1) :: str
  DATA str%B/10*1.0/,str%C/10*2.0/,str%D/5*0.,1,0,-1,1,-1/
  DATA str%LA/5*.TRUE.,5*.FALSE./,N/10/
  DATA str%LB/5*.TRUE.,5*.FALSE./
  DATA str%LC/5*.TRUE.,5*.FALSE./
  DATA str%LD/5*.TRUE.,5*.FALSE./
  WRITE(6,*) ' ***** CVCT6027 *****'
  !
  !  BLOCK IF, ELSE IF
  !
  DO  I=1,N
     IF ( str%LA(I) ) THEN
        str%A(I) = str%B(I) + str%C(I)
     ENDIF
     !
     IF ( str%LA(I) ) THEN
     ELSE
        str%A(I) = str%B(I) + str%C(I)
     ENDIF
     !
     IF ( str%LB(I)) THEN
        str%A(I) = str%B(I)*str%C(I)
     ELSE
        str%A(I) = str%B(I)/str%C(I)
     ENDIF
     !
     IF (str%LC(I)) THEN
        str%A(I) = str%B(I)-str%C(I)
     ELSE IF (str%LD(I)) THEN
        str%A(I) = str%B(I)**str%C(I)
     ENDIF
10   CONTINUE
  enddo
  !
  !  LOGICAL IF
  !
  DO  I=1,N
     IF(str%LA(I)) GO TO 21
     str%A(I)=str%B(I)+str%D(I)
21   CONTINUE
     IF(str%LB(I)) str%A(I)=str%B(I)*str%D(I)
     IF(str%LC(I)) GO TO 22
     str%A(I) = SQRT(str%B(I))
     GO TO 23
22   str%A(I)=str%B(I)-str%D(I)
23   CONTINUE
20   CONTINUE
  enddo
  WRITE(6,*) str%A
  !
  !  NEST
  !
  DO  I=1,N
     IF(str%LA(I)) THEN
        str%A(I)=I
        IF(str%LB(I)) THEN
           str%A(I)=-I
        ELSE
           str%A(I)=str%B(I)
        ENDIF
     ELSE
        str%A(I)=str%B(I)+str%C(I)
        IF(str%LC(I)) THEN
        ELSE IF (str%LA(I)) THEN
           str%A(I)=str%B(I)*str%D(I)
        ENDIF
     ENDIF

     IF(str%LA(I)) THEN
        IF(str%LB(I)) THEN
           IF(str%LC(I)) THEN
              str%A(I)=str%A(I)+str%B(I)
           ENDIF
        ENDIF
     ENDIF
30   CONTINUE
  enddo
  WRITE(6,*) str%A
  !
  !  LONG LOGICAL EXPRESSION
  !
  DO  I=1,N
     IF(str%A(I).EQ.str%B(I) .OR. str%A(I).NE.str%C(I)) THEN
        IF((str%B(I)*str%C(I)).GT.1.2D0) THEN
           str%A(I) = I**str%B(I)
        ELSE
           IF(str%A(I).EQ.(str%B(I)/str%C(I))) THEN
              str%A(I)=str%A(I)**str%C(I)/str%D(I)
           ENDIF
        ENDIF
     ELSE
     ENDIF
     IF(str%LA(I) .OR. str%LB(I) .OR. (str%A(I).GT.0) ) str%A(I)=str%A(I)+str%B(I)
     IF(str%LB(I) .OR. .NOT.str%LA(I) .AND. str%LC(I)) GO TO 40
     str%A(I)= str%D(I)
40   CONTINUE
  enddo
  WRITE(6,*) str%A

  !
  ! BLOCK IF, ELSE IF  ( RC MASK )
  !
  I = 5
  DO  J=1,N
     IF ( str%LA(I) ) THEN
        str%A(J) = str%B(J) + str%C(J)
     ENDIF
     !
     IF ( str%LA(I) ) THEN
     ELSE
        str%A(J) = str%B(J) + str%C(J)
     ENDIF
     !
     IF ( str%LB(I)) THEN
        str%A(J) = str%B(J)*str%C(J)
     ELSE
        str%A(J) = str%B(J)/str%C(J)
     ENDIF
     !
     IF (str%LC(I)) THEN
        str%A(J) = str%B(J)-str%C(J)
     ELSE IF (str%LD(I)) THEN
        str%A(J) = str%B(J)**str%C(J)
     ENDIF
50   CONTINUE
  enddo
  WRITE(6,*) str%A
  !
  !  LOGICAL IF  ( RC MASK )
  !
  DO  J=1,N
     IF(str%LA(I)) GO TO 61
     str%A(J)=str%B(J)+str%D(J)
61   CONTINUE
     IF(str%LB(I)) str%A(J)=str%B(J)*str%D(J)
     IF(str%LC(I)) GO TO 62
     GO TO 63
62   str%A(J)=str%B(J)-str%D(J)
63   CONTINUE
60   CONTINUE
  enddo
  WRITE(6,*) str%A
  STOP
END PROGRAM CV6026
