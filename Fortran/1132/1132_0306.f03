!             CVCT6404            LEVEL=7        DATE=84.11.11
!***************************************************************C
!*  1. PROGRAM NAME   :  CVCT6404                              *C
!*  2. PURPOSE        :  MASK OPTIMIZATION (BDM MASK) TEST     *C
!*                       .HIGHLY NESTED LEVEL                  *C
!*  3. RESULTS        :                                        *C
!*  4. ENVIRONMENT    :  VPLEVEL( )                            *C
!*  5. HISTORY        :  1984.11.07                            *C
!***************************************************************C
PROGRAM CV6404
  !
  !
  PARAMETER   (L1=10,L2=10,L3=10)
  type st1
     INTEGER*4   IA1(L1),   IB1(L1),   IC1(L1)
     INTEGER*4   IA2(L1,L2),IB2(L1,L2),IC2(L1,L2)
     REAL*4      RA1(L1),      RB1(L1),      RC1(L1)
     REAL*4      RA2(L1,L2),   RB2(L1,L2),   RC2(L1,L2)
     REAL*4      RA3(L1,L2,L3),RB3(L1,L2,L3),RC3(L1,L2,L3)
     REAL*8      DA1(L1),      DB1(L1),  DC1(L1),DP1(L1),DM1(L1)
     REAL*8      DA2(L1,L2),   DB2(L1,L2),   DC2(L1,L2)
     REAL*8      DA3(L1,L2,L3),DB3(L1,L2,L3),DC3(L1,L2,L3)
     REAL*8      QA2(L1,L2),   QB2(L1,L2),   QC2(L1,L2)
     COMPLEX     CA1(L1),      CB1(L1),      CC1(L1)
     COMPLEX     CA2(L1,L2),   CB2(L1,L2),   CC2(L1,L2)
     COMPLEX     CA3(L1,L2,L3),CB3(L1,L2,L3),CC3(L1,L2,L3)
     LOGICAL*4   LA1(L1),      LB1(L1),      LC1(L1)
     LOGICAL*4   LA3(L1,L2,L3),LB3(L1,L2,L3),LC3(L1,L2,L3)
  end type st1
  type(st1) :: str

!ocl nosimd
!ocl serial
  DO  I=1,L1
     str%IA1(I)=I
     str%IB1(I)=I+2
     str%IC1(I)=I+3
     str%RA1(I)=I+2
     str%RB1(I)=I+3
     str%RC1(I)=I+4
     str%DA1(I)=2*I
     str%DB1(I)=3*I-2
     str%DC1(I)=2*I+3
     str%DP1(I)=3*I
     str%DM1(I)=2*I
     str%CA1(I)=CMPLX(FLOAT(I),FLOAT(I))
     str%CB1(I)=CMPLX(FLOAT(I+5),FLOAT(I))
     str%CC1(I)=CMPLX(FLOAT(2*I),FLOAT(3*I))
     str%LA1(I)=I.GE.2
     str%LB1(I)=MOD(I,3) .NE. 0
     str%LC1(I)=MOD(I,4) .EQ. 0

     DO  J=1,L2
        str%IA2(I,J)=I*J
        str%IB2(I,J)=I-J
        str%IC2(I,J)=I+J
        str%RA2(I,J)=I*J+5
        str%RB2(I,J)=I-J-5
        str%RC2(I,J)=I+J*3
        str%DA2(I,J)=I*J-2
        str%DB2(I,J)=I-J-3
        str%DC2(I,J)=I+J-4
        str%QA2(I,J)=I*J-5
        str%QB2(I,J)=I-J-6
        str%QC2(I,J)=I+J-7
        str%CA2(I,J)=CMPLX(FLOAT(I+2),FLOAT(J*3))
        str%CB2(I,J)=CMPLX(FLOAT(I-2),FLOAT(J+3))
        str%CC2(I,J)=CMPLX(FLOAT(I*2),FLOAT(J-3))

        DO  K=1,L3
           str%RA3(I,J,K)=I+J+K
           str%RB3(I,J,K)=I-J+K
           str%RC3(I,J,K)=I+J-K
           str%DA3(I,J,K)=I+J-K
           str%DB3(I,J,K)=I*J+K
           str%DC3(I,J,K)=I+J*K
           str%CA3(I,J,K)=CMPLX(FLOAT(I+J+K),FLOAT(I+J*K))
           str%CB3(I,J,K)=CMPLX(FLOAT(I-J+K),FLOAT(I+J+K))
           str%CC3(I,J,K)=CMPLX(FLOAT(I+J+K),FLOAT(I-J+K))
           str%LA3(I,J,K)=(I+J) .GT. (I+K)
           str%LB3(I,J,K)=(I-J) .GT. (I+K)
           str%LC3(I,J,K)=(I*J) .GT. (I+K)
10         CONTINUE
        enddo
     enddo
  enddo
  !
  WRITE(6,*) '##### CVCT6404 #####'

  WRITE(6,*) '----- TEST NO.1 ----- COMPLICATED CODE         '
  WRITE(6,*) '                      DEEPLY NESTED            '

  TEMP=str%RA1(10)
  KLM=0
  KLN=0
  !
  DO  I=1,L1

     IF (str%LA1(I)) THEN
        IF (str%LB1(I)) THEN
           IF (TEMP .GT. 5.0) THEN
              IF (I-5) 25, 50, 75
25            str%RA1(I)=-str%RB1(I)-str%RC1(I)
              GOTO 80
50            str%RA1(I)=str%RC1(I)-str%RB1(I)
              GOTO 80
75            str%RA1(I)=str%RB1(I)+str%RC1(I)

80            str%QA2(I,1)=MOD(str%IB1(I),I)
              DO  J=1,L1
                 str%DA1(J)=str%DB1(J)+str%DC1(J)
                 DO  K=1,L2
                    str%DA2(J,K)=str%DB2(J,K)+str%DC2(J,K)
115                 CONTINUE
                 enddo
                 str%DC1(J)=J
                 str%IA1(J)=MOD(str%IB1(J),J)*MOD(str%IC1(J),J)
110              CONTINUE
              enddo

           ELSE
              DO  J=1,L1
                 str%DA1(J)=str%DB1(J)-str%DC1(J)*J
                 DO  K=1,L2
                    str%DA2(J,K)=str%DB2(J,K)+2.0*str%DC2(J,K)
125                 CONTINUE
                 enddo
                 str%DC1(J)=SIN(FLOAT(J))
                 str%IA1(J)=MOD(str%IB1(J),J)
120              CONTINUE
              enddo
              IF (str%IA1(I).NE.0) THEN
                 str%RA1(I)=str%RB1(I)/str%IA1(I)
              ELSE
                 str%RA1(I)=str%RB1(I)+TAN(COS( FLOAT(str%IA1(I)) ))
              ENDIF
           ENDIF
        ELSE
           DO  J=1,L1
              str%IA1(J)=MOD(str%IB1(J),MOD(str%IC1(J),J+20))
              DO  K=1,L2
                 str%DA2(J,K)=SIN(COS(str%DB2(J,K))*SIN(str%DC2(J,K)))
135              CONTINUE
              enddo
              str%IB1(J)=str%IA1(J)-3
130           CONTINUE
           enddo
           IF (str%DA2(I,1).GT.0.5) THEN
              KLM=KLM+1
              str%DP1(KLM)=str%IA1(I)
           ENDIF
        ENDIF
        str%QA2(2,I)=str%QB2(I,3)
     ENDIF

     IF (str%DA2(I,1).GT.0.5) THEN
        KLN=KLN+1
        str%DM1(KLN)=str%IA1(I)
     ENDIF
190  CONTINUE
  enddo

  !
  WRITE(6,*) 'str%RA1= ',str%RA1
  WRITE(6,*) 'str%QA2= ',str%QA2
  WRITE(6,*) 'str%DA1= ',str%DA1
  WRITE(6,*) 'str%DA2= ',str%DA2
  WRITE(6,*) 'str%DC1= ',str%DC1
  WRITE(6,*) 'str%IA1= ',str%IA1
  WRITE(6,*) 'str%IB1= ',str%IB1
  WRITE(6,*) 'str%IC1= ',str%IC1
  WRITE(6,*) 'str%DP1= ',str%DP1
  WRITE(6,*) 'str%DM1= ',str%DM1

  STOP
END PROGRAM CV6404
