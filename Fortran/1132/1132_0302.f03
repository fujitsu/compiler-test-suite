!             CVCT6400            LEVEL=4        DATE=84.11.10
!***************************************************************C
!*  1. PROGRAM NAME   :  CVCT6400                              *C
!*  2. PURPOSE        :  MASK OPTIMIZATION (BDM MASK) TEST     *C
!*                       .DO BRANCH                            *C
!*  3. RESULTS        :                                        *C
!*  4. ENVIRONMENT    :  VPLEVEL( )                            *C
!*  5. HISTORY        :  1984.11.07                            *C
!***************************************************************C
PROGRAM CV6400
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
     COMPLEX     CA1(L1),      CB1(L1),      CC1(L1)
     COMPLEX     CA2(L1,L2),   CB2(L1,L2),   CC2(L1,L2)
     COMPLEX     CA3(L1,L2,L3),CB3(L1,L2,L3),CC3(L1,L2,L3)
     LOGICAL*4   LA1(L1),      LB1(L1),      LC1(L1)
     LOGICAL*4   LA3(L1,L2,L3),LB3(L1,L2,L3),LC3(L1,L2,L3)
  end type st1
  type(st1) :: str

!OCL nosimd
!Ocl serial
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
     str%LA1(I)=MOD(I,2) .EQ. 0
     str%LB1(I)=MOD(I,3) .EQ. 0
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
  WRITE(6,*) '##### CVCT6400 #####'

  WRITE(6,*) '----- TEST NO.1 ----- SIMPLEST POSSIBLE        '
  WRITE(6,*) '                      DO BRANCH                '

  !
  DO  I=1,L1
     IF(str%RA1(I) .GT. 17.0) GOTO 130
     IF(I .GT. 5) THEN
        str%DA1(I)=str%DB1(I)+str%DC1(I)
     ELSE
        str%DA1(I)=str%DB1(I)-str%DC1(I)
     ENDIF
     str%IA1(I)=str%IB1(I)*str%IC1(I)
     str%RA1(I)=str%RB1(I)+str%RC1(I)
  CONTINUE
  enddo

130 WRITE(6,*) 'str%IA1= ',str%IA1
  WRITE(6,*) 'str%DA1= ',str%DA1
  WRITE(6,*) 'str%RA1= ',str%RA1


  WRITE(6,*) '----- TEST NO.2 ----- 2ND SIMPLEST POSSIBLE  '
  WRITE(6,*) '      DO BRANCH TO 2NDARY LOOP               '


  !
  DO  J=1,L2
     DO  I=1,L1
        IF(str%RA2(I,J) .GT. 18.0) GOTO 230
        IF(str%LA1(3)) THEN
           str%DA2(I,J)=str%DB2(I,J)+str%DC2(I,J)
        ELSE
           str%DA2(I,J)=str%DB1(I)-str%DC1(I)
        ENDIF
        str%IA1(I)=str%IB1(I)*str%IC1(I)
210     CONTINUE
     enddo

230  str%CA1(J)=str%CB1(J)+str%CC1(J)
250  CONTINUE
  enddo

  WRITE(6,*) 'str%IA1= ',str%IA1
  WRITE(6,*) 'str%DA2= ',str%DA2
  WRITE(6,*) 'str%CA1= ',str%CA1


  !
  WRITE(6,*) '----- TEST NO.3 ----- MASK OPTIMIZATION      '
  WRITE(6,*) '      TOGETHER WITH DO BRANCH TEST  * FINAL *'

  S=-9999.0
  K=-9999.0

  DO  I=1,L1

     IF(str%RA1(I) .GT. 17.0) GOTO 330
     IF(I .GT. 5) THEN
        str%DA1(I)=str%DB1(I)+str%DC1(I)
     ELSE
        str%CA1(I)=2.0*str%CB1(I)
        str%DA1(I)=str%DB1(I)-str%DC1(I)
     ENDIF
     str%IA1(I)=str%IB1(I)*str%IC1(I)

     IF (str%RA1(I) .GT. 2.0*str%RB1(I)) THEN
        S=str%RA1(I)
     ENDIF

     IF (str%LB1(I)) THEN
        IF (str%RB1(I)-7.0) 350,360,370
350     K=str%RB1(I)/3.0
360     K=str%RB1(I)/2.0
370     K=str%RB1(I)/4.0
     ENDIF
310  CONTINUE
  enddo

330 WRITE(6,*) '  S= ',S
  WRITE(6,*) '  K= ',K
  WRITE(6,*) 'str%IA1= ',str%IA1
  WRITE(6,*) 'str%DA1= ',str%DA1
  WRITE(6,*) 'str%CA1= ',str%CA1

  STOP
END PROGRAM CV6400
