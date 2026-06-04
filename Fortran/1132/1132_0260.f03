!             CVCT6023            LEVEL=4        DATE=83.07.22
!***************************************************************C
!   1. PROGRAM NAME   :  CVCT6023                               C
!   2. PURPOSE        :  VGEN FUNCTION TEST --- VECTORIZE MESSAGE
!   3. RESULTS        :  ALL VECTORIZED                         C
!   4. ENVIRONMENT    :  VPLEVEL(2)                             C
!   5. HISTORY        :  1982.12.23 N1127                       C
!***************************************************************C
PROGRAM CV6023
  DATA N/10/
  !
  !   DATA DECLARATION FOR NO.1
  !
  type st1
     LOGICAL*4  L1(10),L2(10),L3(10)
     INTEGER*4  I1(10)
     REAL*4     R1(10),R2(10),R3(10)
     REAL*8     RD1(10),RD2(10)
     COMPLEX*8  C1(10),C2(10),C3(10)
  end type st1
  type(st1) :: str
  DATA str%L1/5*.TRUE.,5*.FALSE./,str%I1/10*0/,str%R1/10*0./,J/5/,str%RD1/10*0./
  DATA str%L2/10*.FALSE./,str%L3/2*.FALSE.,2*.TRUE.,6*.TRUE./
  DATA str%R2/10*0./,str%C1/10*(0.,0.)/,str%C2/10*(2.,2.)/,str%C3/10*(1.,1.)/
  DATA str%RD2/10*4./,str%R3/10*1./
  !
  !   DATA DECLARATION FOR NO.2
  !
  type st2
     LOGICAL*4  L11(10),L12(10)
     INTEGER*4  I11(10)
     REAL*4     R11(10)
     REAL*8     RD11(10),RD12(10),RD13(10)
     COMPLEX*8  C11(10)
     COMPLEX*16 CD11(10),CD12(10)
  end type st2
  type(st2) :: str2
  REAL*4     S2,S21
  COMPLEX*16 CS11
  DATA str2%L11/10*.FALSE./,str2%L12/5*.TRUE.,5*.FALSE./
  DATA str2%R11/5*0.,5*1./,str2%RD11/5*0.,5*2./,S2/0./,str2%C11/10*(0,0)/
  DATA str2%CD11/10*(0,0)/,str2%CD12/10*(2,2)/,CS11/(1,1)/
  DATA str2%RD13/1,2,3,1,2,3,1,2,3,1/,S21/0./
  DATA str2%I11/1,2,3,4,5,6,7,8,9,10/
  !
  !   DATA DECLARATION FOR NO.3
  !
  type st3
     LOGICAL*4  L21(10)
     INTEGER*4  I21(10),I22(10)
     REAL*4     R21(10),R22(10)
     REAL*8     RD21(10),RD22(10)
     COMPLEX*16 CD21(10),CD22(10)
  end type st3
  type(st3) :: str3
  LOGICAL*4  LS21,LS22
  DATA str3%R21/1,2,3,4,5,6,7,8,9,10/,str3%R22/2,2,2,5,5,5,8,8,8,10/
  DATA str3%I21/10*0/,str3%RD21/10*0./,str3%CD21/10*(0,0)/
  DATA str3%CD22/10*(1,1)/,str3%L21/10*.FALSE./,str3%I22/1,2,3,4,5,6,7,8,9,10/
  DATA LS21/.TRUE./,LS22/.FALSE./,S3/0/
  str2%RD12 = 0
  str3%RD22 = 0
  !
  !  NO.1
  !
  WRITE(6,*) ' ***** CVCT6023 *****                        '
  WRITE(6,*) ' NO.1  NESTED IF '
  DO  I=1,N
     IF ( str%L1(I) ) THEN
        str%I1(I) = I
        str%R1(J) = str%R1(J) + FLOAT(I)
        str%RD1(I) = SQRT(str%RD2(I))
        str%L2(I) = .NOT. str%L3(I)
        IF ( str%L2(I) ) THEN
           str%I1(I) = -I
           str%R2(J) = str%R2(J) - FLOAT(I)
           str%C1(I) = str%C2(I) / str%C3(I)
        ELSE
           str%I1(I) =  I * I
           str%R3(J) = str%R3(J) * FLOAT(I)
           str%C1(I) = str%C2(I) * str%C3(I)
        ENDIF
     ELSE
        str%I1(I) = I*2
     ENDIF
10   CONTINUE
  enddo
  !
  WRITE(6,*)  str%I1,str%R1,str%RD1,str%L2,str%R2,str%C1,str%R3
  !
  !  NO.2
  !
  WRITE(6,*) ' NO.2   NESTED LOGICAL IF '
  DO  I=1,N
     IF ( str2%L11(I) .OR. str2%L12(I) ) GO TO 21
     str2%R11(I) = FLOAT(I)
     str2%RD11(I) = SQRT(DFLOAT(I))
     IF ( str2%RD11(I) .EQ. 2. ) GO TO 22
     S2 = S2 + str2%R11(I)
22   str2%C11(str2%I11(I)) = str2%R11(I)
     IF ( I.GT. 5) GO TO 23
     str2%R11(I) = - I
23   GO TO 20
21   str2%CD11(I) = str2%CD12(I) / CS11
     IF ( I.GT. 3) GO TO 24
     str2%RD12(I) = str2%RD11(I) ** str2%RD13(I)
24   str2%L12(I)  = str2%RD12(I) .EQ. DFLOAT(I)
     S21 = S21 - str2%R11(I)
20   CONTINUE
  enddo
  !
  WRITE(6,*)  str2%R11,str2%RD11,S2,str2%C11,str2%CD12,str2%RD12,str2%L12,S21
  !
  !  NO.3
  !
  WRITE(6,*) ' NO.3  NESTED ARITHMETIC-IF '
  DO  I=1,N
     IF ( str3%R21(I) - str3%R22(I) ) 31,32,33
33   str3%I21(I) = I
     str3%RD22(I) = SQRT(DFLOAT(I))
     IF ( str3%RD22(I) - 3.0D0 ) 34,35,36
34   str3%RD21(I) = SQRT(str3%RD22(I))
     GO TO 30
35   str3%CD21(I) = str3%CD22(I) + ( 2.,1.)
     GO TO 30
36   str3%L21(str3%I22(I)) = LS21 .OR. LS22
     GO TO 30
31   str3%I21(I) = -I
     IF ( str3%I21(I) + 4 ) 37,38,38
37   str3%RD21(I) = SQRT(DFLOAT(I))
     GO TO 30
38   CONTINUE
     GO TO 30
32   S3 = S3 + FLOAT(I)*str3%R22(I)
     GO TO 30
30   CONTINUE
  enddo
  !
  WRITE(6,*) str3%I21,str3%R21,str3%RD21,str3%RD22,str3%CD21,str3%L21,S3
  STOP
END PROGRAM CV6023
