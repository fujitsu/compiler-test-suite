  !             CVCT6115            LEVEL=3        DATE=83.02.17
  !********************************************************************C
  !*  1. PROGRAM NAME   :  CVCT6115                                   *C
  !*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
  !*                       .                                          *C
  !*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
  !*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
  !*  5. HISTORY        :  1983.1.                                    *C
  !********************************************************************C
  DATA N2/2/,N3/3/,N10/10/
  !
  !     DATA FOR LOOP 1
  !
  type st1
     LOGICAL*4  L10(2),L11(2),L12(3,2),L13(3,2),L14(3,2),L15(2),L16(2)
     INTEGER*4  I10S,I11S,I12S,I10(2),I11(10),I12(10)
     REAL*4     R10S,R10(2,3),R11S,R12S,R13S ,R11(2,3)
     REAL*8     D10S,D11S,D10(2),D11(2)
     REAL*8     Q10(10,3,2)
     COMPLEX*8  C10(3,2),C10S
  end type st1
  type(st1) :: str
  !
  !
  DATA       str%L10/.TRUE.,.FALSE./,str%L11/.TRUE.,.FALSE./,str%L12/6*.FALSE./, &
       str%L13/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./,      &
       str%L14/6*.FALSE./,str%L15/.TRUE.,.FALSE./,str%L16/.TRUE.,.FALSE./, &
       str%I10S/0/,str%I11S/0/,str%I10/1,2/,str%I12S/0/, str%R10/1,2,3,4,5,6/,     &
       str%R11S/10/,str%R12S/0/,str%R11/1,2,3,4,5,6/,str%R13S/2/,str%Q10/60*0/,   &
       str%I11/10,20,30,40,50,60,70,80,90,100/,str%I12/10*2/,         &
       str%D10/16,20/,str%D11/2*0/,str%C10/(1,1),(0,1),(1,0),(0,0),(1,1), &
       (-1,0)/,str%C10S/(1,1)/ ,IC/1/ ,str%D10S/0/,str%D11S/0/
  !
  !     DATA FOR LOOP 2
  !
  type st2
     LOGICAL*1   LB20(10)
     INTEGER*4   I20(3),I21(3)
     REAL*4      R20(3),R21(3)
     REAL*8      D20(3),D20S,D21(10,3),D21S,D22(10,3),D23(3)
     COMPLEX*8   C20(3),C21(10)
     COMPLEX*16  CD20(3),CD21(3)
     REAL*8      Q20(3),Q21(10,3,3)
     LOGICAL*4   L20(5,5)
     COMPLEX*16  CQ20(10,3)
  end type st2
  type(st2) :: str2
  !
  DATA str2%I20/3*0/,str2%I21/3*0/,str2%R20/3*0/,str2%D20/3*0/,str2%C20/3*0/
  DATA str2%CD20/3*0/
  DATA str2%Q20/3*0/,str2%Q21/90*0/,str2%D20S/0/,str2%D21/-3,3,4,-4,5,6,7,-18,-20, &
       5,6,7,8,-6,8,4,4,-16,0,0,7,9*3/,D22S/0/, &
       str2%L20/15*.TRUE.,10*.FALSE./,R20S/0/,str2%R21/1,2,3/,R21S/0/
  DATA str2%C21/2*(1,1),2*(0,1),2*(1,0),2*(-1,-1),(-3,0), &
       (7,8)/,str2%CQ20/5*(1,1),5*(-1,0),5*(-2,-3),5*(8,2),5*(7,2), &
       5*(1,2)/
  DATA str2%LB20/5*.FALSE.,5*.TRUE./,D23S/0/,str2%D22/10*1,20*2/
  DATA str2%CD21/3*0/
  !
  WRITE(6,*) '***** CVCT6115 *****'
  WRITE(6,*) '----- NO.1 -----'
  DO  I1=1,N2
     IF(str%L10(I1)) THEN
        IF(str%L11(IC)) THEN
           str%I10S = str%I10S + str%I10(I1)
        ELSE
           str%I11S = str%I11S - str%I10(I1)
        ENDIF
     ENDIF
     DO  I2 =1,N3
        str%R10S = str%R10(I1,I2)
        IF ( str%R11S .LT. str%R10S ) THEN
           str%R11S = str%R10S
           str%I12S = I2
        ENDIF
        str%L12(I2,I1) = .NOT.str%L13(I2,I1)
        IF (str%L12(I2,1)) THEN
           DO  I3=1,N10
              str%Q10(I3,I2,I1) = str%I11(I3)/str%I12(I3)
10            str%D10S = str%D10S + str%Q10(I3,I2,I1)
           enddo
        ELSE
           str%L14(I2,I1) = str%C10(I2,I1).EQ. str%C10S
        ENDIF
        str%R12S = str%R12S + str%R10S
        str%R10S = str%R11(I1,I2)*str%R13S
100     CONTINUE
     enddo

     str%L10(I1) = str%L15(I1).AND.str%L16(I1)
     IF( str%L10(I1) ) THEN
        str%D11S = str%D10(I1)/4.0D01
     ELSE
        str%D11S = str%D10(I1)*4.0D01
     ENDIF
     str%D11(I1) = str%D11S + SQRT(str%D11S)
1000 CONTINUE
  enddo

  !
  WRITE(6,*) 'str%I10S  = ',str%I10S
  WRITE(6,*) 'str%I11S  = ',str%I11S
  WRITE(6,*) 'str%R11S  = ',str%R11S,' str%I12 = ',str%I12
  WRITE(6,*) 'str%L12   = ',str%L12
  WRITE(6,*) 'str%Q10   = ',str%Q10
  WRITE(6,*) 'str%D10S  = ',str%D10S
  WRITE(6,*) 'str%L14   = ',str%L14
  WRITE(6,*) 'str%R12S  = ',str%R12S
  WRITE(6,*) 'str%R10S  = ',str%R10S
  WRITE(6,*) 'str%L10   = ',str%L10
  WRITE(6,10000) str%D11
10000 FORMAT(' str%D11   = ',2F20.10)
  !
  WRITE(6,*) '----- NO.2 -----'
  DO  I1=2,N3
     str2%I20(I1) = I1
     str2%R20(I1) = str2%I20(I1)
     str2%D20(I1) = str2%R20(I1)
     str2%C20(I1) = - str2%D20(I1)
     str2%CD20(I1) = str2%C20(I1)
     str2%Q20(I1) = str2%CD20(I1)
     !
     DO I2=1,N3
        DO  I3=1,N10
           str2%Q21(I3,I2,I1) = str2%Q20(I1)
           str2%D20S = str2%D20S + str2%D21(I3,I2)
           IF( str2%D20S ) 21,22,23
21         str2%D21S = 1.0
           GO TO 23
22         str2%D21S = 2.0
           GO TO 23
23         WRITE(6,*) ' INNER MOST LOOP I3 = ',I3,' str2%D21S = ',str2%D21S
20         CONTINUE
        enddo

        !
        D22S = D22S + str2%D21(5,I2) + str2%D21S
        IF( str2%L20(I2,I1) ) THEN
           R20S = str2%R21(I2)*8
        ELSE
           R20S = str2%R21(I2)/8
        ENDIF
        R21S = R21S - R20S
        !
        DO  I4=2,N10
           str2%C21(I4) = str2%C21(I4-1) + str2%CQ20(I4,I2)
           IF( str2%LB20(I4) ) D23S = str2%D21(I4,I2)
24         str2%D22(I4,I2) = str2%D22(I4-1,I2) + D23S
        enddo

        !
200     CONTINUE
     enddo

     str2%CD21(I1) = str2%CD20(I1) + str2%Q20(I1)
     str2%C20(I1-1) = str2%CD21(I1-1)
     str2%D23(I1) = str2%D20(I1)   + str2%C20(I1-1)
     str2%R21(I1) = str2%D23(I1) + str2%R20(I1)
     str2%I21(I1) = str2%R21(I1) + str2%I20(I1) + I1
2000 CONTINUE
  enddo

  WRITE(6,*) ' str2%I20  = ',str2%I20
  WRITE(6,*) ' str2%R20  = ',str2%R20
  WRITE(6,*) ' str2%D20  = ',str2%D20
  WRITE(6,*) ' str2%C20  = ',str2%C20
  WRITE(6,*) ' str2%CD20 = ',str2%CD20
  WRITE(6,*) ' str2%Q20  = ',str2%Q20
  WRITE(6,*) ' str2%Q21  = ',str2%Q21
  WRITE(6,*) ' str2%D20S = ',str2%D20S
  WRITE(6,*) ' D22S = ',D22S
  WRITE(6,*) ' R21S = ',R21S
  WRITE(6,*) ' str2%C21  = ',str2%C21
  WRITE(6,*) ' str2%D22  = ',str2%D22
  WRITE(6,*) ' str2%CD21 = ',str2%CD21
  WRITE(6,*) ' str2%D21  = ',str2%D21
  WRITE(6,*) ' str2%R21  = ',str2%R21
  WRITE(6,*) ' str2%I21  = ',str2%I21
  STOP
END program
