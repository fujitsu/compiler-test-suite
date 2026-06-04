  !             CVCT6102            LEVEL=5        DATE=83.08.06
  !********************************************************************C
  !*  1. PROGRAM NAME   :  CVCT6102                                   *C
  !*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
  !*                       .                                          *C
  !*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
  !*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
  !*  5. HISTORY        :  1983.1.                                    *C
  !********************************************************************C
  DATA N10/10/,N5/5/,N2/2/
  !
  !     DATA FOR NO.1
  !
  type st1
     CHARACTER*4 CH10(10)
     INTEGER*4  I10(10),I11(10)
     REAL*4     R10(10),R11(10)
     REAL*8     RD10(10,2) ,RD11(2,10)
     COMPLEX*8  C10(6,2),C11(6,2)
     COMPLEX*16 CD10(-1:5,2)
  end type st1
  type(st1) :: str
  real*8 RD10S
  !
  DATA  str%CH10/5*'TEST',5*'ESTE'/,str%I10/10*0/,str%I11/5*1,5*2/,I10S/3/
  DATA  str%C10/6*(1,1),6*(1,2)/,str%C11/6*(1,1),6*(2,1)/
  DATA  R11S/1.0/,str%R10/5*1,5*2/,str%R11/10*0/
  DATA  str%RD10/5*1.5,5*2.5,5*3.5,5*4.5/,str%RD11/13*1.5,6*0.5,2.5/
  DATA  str%CD10/7*(0.5,0.5),7*(1.5,1.5)/
  DATA  J/1/,N/2/,N1/5/
  !
  !     DATA FOR NO.2
  !
  type st2
     INTEGER*4  I20(10),I21(10,2),I22(10,2),I23(10,2)
     REAL*4     R20(5,2)
     !     COMPLEX*16 CD20(2)/(1,1),(1,2)/
  end type st2
  type(st2) :: str2

  !
  DATA  str2%R20/1,2,3,4,5,6,7,8,9,10/,str2%I20/1,2,3,4,5,1,2,3,4,5/
  DATA I20S/0/,str2%I21/10*4,10*8/,str2%I23/5*1,5*2,5*3,5*4/
  !
  !     DATA FOR NO.3
  !
  type st3
     INTEGER*4  I30(10),I31(10),I32(2),I33(2)
     REAL*4     R30(10,2),R31(10,2),R32(2,10)
     REAL*8     RD30S,RD30(10,2),RD31(2)
     REAL*8     Q30(10)
  end type st3
  type(st3) :: str3
  !
  DATA  str3%I30/10*0/,str3%R30/20*0/,str3%R31/5*1,5*0,5*2,5*3/,str3%R32/20*0/
  DATA  str3%RD30/20*0/,str3%Q30/0,1,2,3,4,5,6,7,8,9/,str3%I31/5*1,5*2/
  DATA  str3%I32/2*0/,str3%I33/2*1/,str3%RD31/0,0/,I30S/2/ ,RD30S/3/
  !
  !  TEST NO.1
  !
  WRITE(6,*) '***** CVCT6102 *****'
  WRITE(6,*) '----- TEST NO.1 -----'
1000 CONTINUE
  DO  I=2,N1
     IF (str%CH10(I).EQ.'TEST') GOTO 100
     str%I10(I) = str%I11(I)*I10S
100  CONTINUE
  enddo
  !
  DO  I=1,N1
200  IF (str%C10(I,J).EQ.str%C11(I,J)) str%C10(I,J)=str%C10(I,J)/str%C11(I,J)
  enddo
  !
  DO  I=2,N1
     R10S = R11S
     R11S = str%R10(I)
300  str%R11(I) = str%R11(I-1) + R11S
  enddo
  !
  DO  I=2,N1
     RD10S = str%RD10(I,J) + str%RD11(J,I)
400  str%CD10(I,J) = RD10S + str%CD10(I-1,J)
  enddo
  !
  J = J + 1
  IF ( J.LE.N) GO TO 1000
!
  WRITE(6,*) 'str%I10  = ',str%I10
  WRITE(6,*) 'str%C10  = ',str%C10
  WRITE(6,*) 'R10S = ',R10S
  WRITE(6,*) 'R11S = ',R11S
  WRITE(6,*) 'str%R11  = ',str%R11
  WRITE(6,*) 'str%CD10 = ',str%CD10
  !
  ! TEST NO.2
  !
  WRITE(6,*) '----- TEST NO.2 -----'
  DO  I=1,N2
     DO  J=1,N5
500     IF (str2%R20(J,I).LE.0) STOP
     enddo
     !
     DO  K=1,N10
510     I20S = I20S + str2%I20(K)
     enddo
     !
     DO  L=1,N10
        I21S = str2%I21(L,I)
520     WRITE(6,*) I21S
     enddo
     !
     DO  M=1,N10
        str2%I22(M,I) = str2%I21(M,I) / 4
530     str2%I23(M,I) = str2%I22(M,I) + str2%I23(M,I)
     enddo
2000 CONTINUE
  enddo
  !
  !
  WRITE(6,*) ' I20S = ',I20S
  WRITE(6,*) ' str2%I22  = ',str2%I22
  WRITE(6,*) ' str2%I23  = ',str2%I23
  !
  ! TEST NO.3
  !
  WRITE(6,*) '----- TEST NO.3 -----'
  DO  I=1,N2
     DO  J=1,N10
        GO TO ( 601,602,600 ) I30S
601     str3%I30(J) = J
602     str3%I30(J) = str3%I30(J) + J
600     CONTINUE
     enddo
     !
     DO   K=1,N10
        str3%R30(K,I) = SIN(str3%R31(K,I))
        R30S = str3%R31(K,I)
610     str3%R32(I,K) = COS(R30S)
     enddo
     !
     DO   L=1,N10
        str3%RD30(L,I) = RD30S
        RD30S = str3%RD30(L,I) + RD30S
        str3%I30(L) = str3%I30(L) + RD30S
620     CONTINUE
     enddo
     !
     DO  M=1,N10
630     str3%Q30(M) = str3%Q30(M) + str3%I30(M)/str3%I31(M)
     enddo
     !
     str3%I32(I) = str3%I33(I) + str3%R32(I,3)
     str3%RD31(I) = str3%I32(I)
     WRITE(6,*) ' SECONDARY LOOP'
3000 CONTINUE
  enddo
  !
  WRITE(6,*) ' str3%I30   = ',str3%I30
  WRITE(6,*) ' str3%R30   = '
  WRITE(6,10000) str3%R30
10000 FORMAT(7F10.6/)
  WRITE(6,*) ' str3%R32   = '
  WRITE(6,10000) str3%R32
  WRITE(6,*) ' str3%RD30  = ',str3%RD30
  WRITE(6,*) ' RD30S = ',RD30S
  WRITE(6,*) ' str3%I32   = ',str3%I32
  WRITE(6,*) ' str3%RD31  = ',str3%RD31
  WRITE(6,*) ' Q30  = ',str3%Q30
  STOP
END program
