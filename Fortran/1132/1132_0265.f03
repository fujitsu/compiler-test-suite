!             CVCT6028            LEVEL=3        DATE=83.12.27
!****************************************************************C
!   1. PROGRAM NAME   :  CVCT6028                                C
!   2. PURPOSE        :  INTERFACE FOR INTERACTIVE VECTORIZER    C
!   3. RESULTS        :  ALL VECTORIZED                          C
!   4. ENVIRONMENT    :  VTUNE ,VMSG,OR VPINTVCT                 C
!   5. HISTORY        :  1982.12.27 N1127                        C
!****************************************************************C
PROGRAM CV6028
  type st1
     REAL*8    A(10),B(10),C(10),D(10)
     REAL*8    QA(10),QB(10),QC(10),QD(10)
     LOGICAL*4 LA(10),LB(10),LC(10),LD(10)
     LOGICAL*1 L1A(10),L1B(10),L1C(10),L1D(10)
  end type st1
  type(st1) :: str
  DATA str%B/10*1.0/,str%C/10*2.0/,str%D/5*0.,1,0,-1,1,-1/
  DATA str%QB/10*1.0/,str%QC/10*2.0/,str%QD/5*0.,1,0,-1,1,-1/
  DATA str%LA/5*.TRUE.,5*.FALSE./,N/10/
  DATA str%LB/5*.TRUE.,5*.FALSE./
  DATA str%LC/5*.TRUE.,5*.FALSE./
  DATA str%LD/5*.TRUE.,5*.FALSE./
  DATA str%L1A/5*.TRUE.,5*.FALSE./
  DATA str%L1B/5*.TRUE.,5*.FALSE./
  DATA str%L1C/5*.TRUE.,5*.FALSE./
  DATA str%L1D/5*.TRUE.,5*.FALSE./
  WRITE(6,*) ' ***** CVCT6028 *****'
  !
  !  CONTAINING SCALAR OPERATION
  !
  DO  I=1,N
     IF ( str%LA(I) ) THEN
        str%A(I) = str%B(I) + str%C(I)
        str%QA(I) =  str%QC(I)
     ENDIF
     !
     IF ( str%LB(I)) THEN
        str%A(I) = str%B(I)*str%C(I)
        str%QA(I) = str%QB(I)
     ELSE
        str%A(I) = str%B(I)/str%C(I)
        str%QA(I) =  str%QD(I)
     ENDIF
     !
     IF (str%LC(I)) THEN
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
     str%A(I)=SQRT(str%B(I)+str%D(I))
     str%QA(I) = str%QB(I)
21   CONTINUE
     IF(str%LB(I)) str%A(I)=str%B(I)*SIN(str%D(I)) + str%QA(I)*str%QC(I)
20   CONTINUE
  enddo
  WRITE(6,*) str%A,str%QA
  write(6,*)
  !
  DO  I=1,N
     IF(str%L1A(I)) THEN
        str%A(I)=str%B(I)+str%C(I)
        str%D(I)=str%A(I)*str%C(I)
        IF(str%L1B(I)) THEN
        ELSE
           str%A(I)=str%B(I)**str%D(I)
        ENDIF
     ELSE
        str%A(I)=str%B(I)+str%C(I)
        IF(str%L1C(I)) THEN
        ELSE IF (str%L1A(I)) THEN
           str%A(I)=str%B(I)*str%C(I)**str%D(I)
        ENDIF
     ENDIF
30   CONTINUE
  enddo
  WRITE(6,*) str%A
  write(6,*)
  !
  !  LONG LOGICAL EXPRESSION
  !
  DO  I=1,N
     IF(str%L1A(I)) THEN
        IF((str%B(I)*str%C(I)).GT.1.2D0) THEN
           str%A(I) = I**str%B(I)
        ELSE
           IF(str%A(I).EQ.(str%B(I)/str%C(I))) THEN
              str%A(I)=str%A(I)**str%C(I)/str%D(I)
              str%QA(I)=str%QB(I)+str%QC(I)
           ENDIF
        ENDIF
     ELSE
     ENDIF
     IF(str%LA(I) .OR. str%L1D(I) .OR. (str%A(I).GT.0) ) str%A(I)=str%A(I)+SQRT(str%B(I))
     IF(str%LB(I) .OR. .NOT.str%LA(I) .AND. str%L1C(I)) GO TO 40
     str%A(I)= str%D(I)+SIN(str%B(I))
     str%QA(I)=str%QA(I)**I
40   CONTINUE
  enddo
  WRITE(6,*) str%A,str%QA
  write(6,*)

  !
  ! BLOCK IF, ELSE IF  ( RC MASK )
  !
  I = 5
  DO  J=1,N
     IF ( str%LA(I) ) THEN
        str%A(J) = str%B(J) + str%C(J)
        str%QA(J)=str%QB(J)
     ENDIF
     !
     IF ( str%LB(I)) THEN
        str%A(J) = str%B(J)**str%C(J)
        str%QA(J)=str%A(J)
     ELSE
        str%A(J) = str%B(J)/str%C(J)+SQRT(str%A(J))+str%QB(J)
     ENDIF
     !
     IF (str%L1C(I)) THEN
        str%A(J) = str%B(J)-str%C(J)
     ELSE IF (str%LD(I)) THEN
        str%A(J) = str%B(J)**str%C(J)
        str%QA(J)=I
     ENDIF
50   CONTINUE
  enddo
  WRITE(6,*) str%A,str%QA
  write(6,*)
  !
  !  LOGICAL IF  ( RC MASK )
  !
  DO  J=1,N
     IF(str%L1A(I)) GO TO 61
     str%A(J)=str%B(J)+str%D(J)
61   CONTINUE
     IF(str%L1B(I)) str%A(J)=str%B(J)*str%D(J)**I + str%QA(J)
     IF(str%LC(I)) GO TO 60
     str%A(J)=str%B(J)-str%D(J)+str%B(I)+str%A(J)**I
     str%QA(J)=str%QB(J)
60   CONTINUE
  enddo
  WRITE(6,*) str%A,str%QA
  STOP
END PROGRAM CV6028
