  !             CVCT6104            LEVEL=3        DATE=83.08.06
  !********************************************************************C
  !*  1. PROGRAM NAME   :  CVCT6104                                   *C
  !*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
  !*                       .                                          *C
  !*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
  !*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
  !*  5. HISTORY        :  1983.1.                                    *C
  !********************************************************************C
  DATA N1/1/,N2/2/,N10/10/
  !
  !     DATA FOR NO.1
  !
  type st1
     INTEGER*4  I10(10)
     REAL*8     RD10(10),RD11(10,10),RD12(10,10),RD10S,RD13(10,10)
     CHARACTER  CH10(10)
     REAL*8     Q10(10)
     COMPLEX*8  C10(2)
  end type st1
  type(st1) :: str
  !
  DATA  str%RD10/10*1.5/,str%RD10S/2./, str%CH10/'A','B','N','T','T','C','D','T','S','O'/
  DATA I10S/0/, str%I10/1,2,8,3,2,0,5,4,7,6/,str%Q10/10*0/
  DATA str%RD11/25*1,25*2,25*3,25*0.5/, str%RD12/25*25,25*36,25*49,25*16/
  DATA str%C10/2*(0,0)/ , str%RD13/100*0/
  !
  !     DATA FOR NO.2
  !
  type st2
     LOGICAL*4 L20(10)
     INTEGER*4 I20(-1:10),I21(10)
     COMPLEX*8 C20(10,6,1),C21(10,2,10)
  end type st2
  type(st2) :: str2
  !
  DATA  str2%L20/5*.TRUE.,5*.FALSE./,str2%I20/12*1/,str2%I21/1,2,3,4,5,6,7,8,9,10/
  DATA I20S/2/ ,str2%C20/15*(0,0),15*(1,0),15*(0,1),15*(1,1)/
  DATA str2%C21/50*(0,1),50*(0,1),50*(0,0),50*(1,1)/
  !
  !     DATA FOR NO.3
  !
  type st3
     REAL*4     R30(10),R31(10)
     INTEGER*4  I30(10)
     REAL*8     RD30(10),RD30S
     REAL*8     Q30(10),Q31(10)
     COMPLEX*8  C30(2),C31(2),C32(2)
     COMPLEX*16 CD30(0:10,10),CD30S,CD31(10)
  end type st3
  type(st3) :: str3
  !
  DATA str3%C30/(1,1),(1,0)/,str3%C31/(1,1),(2,1)/ ,str3%I30/10*0/,str3%Q31/10*2/
  DATA str3%RD30/3*3,2*2,3*4,2*6/,str3%RD30S/1/,str3%CD30/27*(0,1),28*(1,0),27*(0,0),28*(1,1)/
  DATA str3%CD30S/(1,1)/,str3%CD31/5*(1,1),5*(1,0)/
  DATA str3%R31/5*1,5*2/,str3%C32/2*(0,0)/
  !
  WRITE(6,*) '***** CVCT6104 *****'
  !
  !     NO. 1
  !
  WRITE(6,*) '----- NO.1 -----'
  DO  I=1,N10
     str%RD10(I) = str%RD10(I) * str%RD10S
     DO  J=1,N10
        IF ( str%CH10(J).EQ.'T'  ) GO TO 1100
        DO  I1=1,N10
100        I10S = I10S + str%I10(I1)
        enddo
        !
        DO  I1=1,N10
110        str%Q10(I1) = 1.0
        enddo
        !
        DO  I2=1,N10
           str%RD11(I2,J) = str%RD11(I2,I) + SQRT(str%RD12(I2,J))
           DO  I3=1,N10
120           str%RD10S = str%RD10S + str%RD11(I3,I)
           enddo
        enddo
        !
        DO  I3=1,1
130        str%C10(I3) = (1,1)
        enddo
1100    CONTINUE
     enddo
     str%RD13(I,I) = str%RD10(I) + I
1000 CONTINUE
  enddo
  !
  WRITE(6,*) ' str%RD10  = ',str%RD10
  WRITE(6,*) ' I10S  = ',I10S
  WRITE(6,*) ' str%Q10   = ',str%Q10
  WRITE(6,*) ' str%RD11  = ',str%RD11
  WRITE(6,*) ' str%RD10S = ',str%RD10S
  WRITE(6,*) ' str%C10   = ',str%C10
  WRITE(6,*) ' str%RD13  = ',str%RD13
  !
  !     NO. 2
  !
  WRITE(6,*) '----- NO.2 -----'
  DO  I=1,N1
     IF (str2%L20(5) ) THEN
        DO  J=1,N2
           DO  I1=1,N10
200           str2%I20(I1)=str2%I20(I1-1)+str2%I21(I1)*I20S
           enddo
           !
           DO  I2=1,N10
              CALL SUB1(I2)
210           CONTINUE
           enddo
           !
           DO  I3=1,N10
220           str2%I20(I3) = str2%I20(I3)/3
           enddo
           !
           DO  I4=2,N10
230           str2%C20(I4,5,I) = str2%C20(I4-1,6,I) + str2%C21(I4,J,I4)
           enddo
2100       CONTINUE
        enddo
     ENDIF
2000 CONTINUE
  enddo
  WRITE(6,*) ' str2%I20  = ',str2%I20
  WRITE(6,*) ' str2%C20  = ',str2%C20
  !
  !     NO. 3
  !
  WRITE(6,*) '----- NO.3 -----'
  DO  I=1,N2
     IF ( str3%C30(I) .NE. str3%C31(I) ) GO TO 3000
     DO  J=1,N10
        str3%I30(I) = str3%I30(I) + J
        DO  I1=1,N10
300        str3%Q30(I1) = str3%Q31(I1)
        enddo
        DO  I1=1,N10
310        str3%RD30(I1) = str3%RD30(I1) - str3%RD30S
        enddo
        DO  I2=1,N10
320        str3%CD30(I2,J) = str3%CD30(I2-1,J) + str3%CD30S/str3%CD31(I2)
        enddo
        str3%R30(J) = str3%Q30(J)
        str3%R31(J) = str3%R31(J) + str3%R30(J)
        DO  I3=1,N10
           CALL SUB1(I3)
330        CONTINUE
        enddo
3100    CONTINUE
     enddo
     str3%C32(I) = str3%C32(I) + str3%C30(I) * str3%C31(I)
3000 CONTINUE
  enddo
  !
  WRITE(6,*) ' str3%I30  = ',str3%I30
  WRITE(6,*) ' str3%Q30  = ',str3%Q30
  WRITE(6,*) ' str3%RD30 = ',str3%RD30
  WRITE(6,*) ' str3%CD30 = ',str3%CD30
  WRITE(6,*) ' str3%R30  = ',str3%R30
  WRITE(6,*) ' str3%R31  = ',str3%R31
  WRITE(6,*) ' str3%C32  = ',str3%C32
  STOP
END program

SUBROUTINE SUB1(I)
  I= I+1
  RETURN
END SUBROUTINE SUB1
