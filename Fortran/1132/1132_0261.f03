!             CVCT6024            LEVEL=2        DATE=83.07.22
!***************************************************************C
!   1. PROGRAM NAME   :  CVCT6024                               C
!   2. PURPOSE        :  VGEN FUNCTION TEST --- VECTORIZE MESSAGE
!   3. RESULTS        :  ALL VECTORIZED                         C
!   4. ENVIRONMENT    :  VPLEVEL(2)                             C
!   5. HISTORY        :  1982.12.23 N1127                       C
!***************************************************************C
PROGRAM CV6024
  DATA N/10/
  !
  !   DATA DECLARATION FOR NO.1
  !
  type st1
     LOGICAL*4  L1(10)
     INTEGER*4  I1(10)
     REAL*4     R1(10),R2(10)
     REAL*8     RD1(10),RD2(10)
  end type st1
  type(st1) :: str

  DATA str%L1/5*.TRUE.,5*.FALSE./,str%I1/10*0/,str%R1/10*0./,str%RD1/10*0./
  DATA str%R2/10*1./
  DATA str%RD2/10*4./
  !
  !   DATA DECLARATION FOR NO.2
  !
  type st2
     LOGICAL*4  L11(10),L12(10)
     REAL*4     R11(10)
     REAL*8     RD11(10),RD12(10),RD13(10)
  end type st2
  type(st2) :: str2
  REAL*4     S21
  DATA str2%L11/5*.FALSE.,5*.TRUE./
  DATA str2%R11/5*0.,5*1./,str2%RD11/5*0.,5*2./
  DATA str2%RD13/1,2,3,1,2,3,1,2,3,1/,str2%L12/10*.FALSE./,S21/0./
  !
  !   DATA DECLARATION FOR NO.3
  !
  type st3
     LOGICAL*4  L31(10),L32(10),L33(10),L34(10),L35(10),L36(10),L37(10)
     REAL*8     RD21(10)
  end type st3
  type(st3) :: str3
  DATA str3%L31,str3%L32,str3%L33,str3%L34,str3%L35,str3%L36,str3%L37/70*.TRUE./,str3%RD21/10*0./
  !
  !  NO.1
  !
  WRITE(6,*) ' ***** CVCT6024 *****                        '
  WRITE(6,*) ' NO.1  DO-BRANCH '
  DO  I=1,N
     IF ( str%L1(I) ) THEN
        str%I1(I) = I
        str%R1(I) = str%R2(I) + FLOAT(I)
        str%RD1(I) = SQRT(str%RD2(I))
     ELSE
        GO TO 11
     ENDIF
10   CONTINUE
  enddo
  !
11 WRITE(6,*)  I,str%I1,str%R1,str%RD1
  !
  !  NO.2
  !
  WRITE(6,*) ' NO.2   CONTAINS DO LOOP  '
  DO  I=1,N
     IF ( str2%L11(I) .OR. str2%L12(I) ) GO TO 21
     str2%R11(I) = FLOAT(I)
     str2%RD11(I) = SQRT(DFLOAT(I))
     GO TO 22
21   DO  J=1,N
        str2%RD12(J) = SIN(str2%RD13(J))
25      CONTINUE
     enddo
     GO TO 20
22   S21 = S21 - str2%R11(I)
20   CONTINUE
  enddo
  !
  WRITE(6,*)  str2%R11,str2%RD11,str2%RD12,S21
  !
  !  NO.3
  !
  WRITE(6,*) ' NO.3  NESTED ARITHMETIC-IF '
  DO  I=1,N
     IF ( str3%L31(I) ) THEN
        IF ( str3%L32(I) ) THEN
           IF ( str3%L33(I) ) THEN
              IF ( str3%L34(I) ) THEN
                 IF ( str3%L35(I) ) THEN
                    IF ( str3%L36(I) ) THEN
                       IF ( str3%L37(I) ) THEN
                          str3%RD21(I) = SQRT(DFLOAT(I))
                       ENDIF
                    ENDIF
                 ENDIF
              ENDIF
           ENDIF
        ENDIF
     ENDIF
  enddo
  !
  WRITE(6,*) str3%RD21
  STOP
END PROGRAM CV6024
