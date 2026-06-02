  !             CVCT6116            LEVEL=2        DATE=83.02.17
  !********************************************************************C
  !*  1. PROGRAM NAME   :  CVCT6116                                   *C
  !*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
  !*                       .                                          *C
  !*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
  !*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
  !*  5. HISTORY        :  1983.1.                                    *C
  !********************************************************************C
  DATA  N2/2/,N3/3/,N10/10/
  !
  !     DATA FOR NO.1
  !
  type st1
     INTEGER*4   I10(3,3),I11(3,2)
     REAL*4      R10(3,2)
     REAL*8      D10(3),D11(10,3,2),D12(3),D13(3,2),D14(3,2)
     REAL*8      Q10(10)
     LOGICAL*4   L10(3,2),L11(10),L12(10),L13(3,2),L14(3,2)
  end type st1
  type(st1) :: str
  REAL*8      D10S,D11S,D12S,D13S,D14S,D15S
  !
  !
  DATA  str%I10/1,2,3,4,5,6,7,8,9/,str%I11/6*0/,str%R10/6*0/,str%L10/.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./, str%D10/3*0/, &
       D10S/0/, str%L11/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE., &
       2*.TRUE./,str%L12/3*.TRUE.,3*.FALSE.,3*.TRUE.,.FALSE./
  DATA str%D11/12*1,12*2,12*-3,12*4,6*-8,6*9/,D13S/7/
  DATA str%L14/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
  DATA      str%D12/3*0/, str%D13/6*0/,str%D14/1,2,-2,3,-3,4/,D14S/0/
  DATA D15S/0/,str%Q10/10*0/
  !
  WRITE(6,*) '***** CVCT6116 *****'
  WRITE(6,*) '----- NO.1 -----'
  DO  I1=1,N2
     DO  I2=1,N3
        str%I10(I2,I1) = I1 + I2
        str%I11(I2,I1) = str%I10(I1,I2)
        CALL SUB1(str%I11)
        IF ( I1 .EQ. N2) WRITE(6,*) ' I2 = ',I2
        str%R10(I2,I1) = str%I11(I2,I1)
        R10S = SQRT(str%R10(I2,I1))
        IF ( str%L10(I1,I1) ) THEN
           R10S = R10S + R10S**I1
        ELSE
           R10S = R10S - R10S**I2
        ENDIF
        str%D10(I2) = R10S
        D10S = str%D10(I2) + D10S + str%I10(I2,I1)
        !
        DO  I3=2,N10
           IF(str%L11(I3))  str%L11(I3-1) = str%L12(I3)
           D11S = str%D11(I3,I2,I1)
10         CONTINUE
        enddo
        D12S = D11S
        str%L13(I2,I1) = D12S.GT.D13S .OR. str%L14(I2,I1)
        IF ( str%L13(I2,I1) ) D12S = str%D10(I2)**I2
        str%D12(I2) = D12S
        !
        D13S = D13S + D12S + D11S
        WRITE(6,*) ' D13S = ',D13S
        !
        str%D13(I2,I1) = D13S + str%D10(I2) + R10S
        str%D14(I2,I1) = str%D13(I2,I1) + D13S*str%D14(I2,I1)
        DO  I4=2,N10
           IF (str%L11(I4)) THEN
              D14S = str%D11(I4,I2,I1)
           ELSE
              D15S = -str%D11(I4,I2,I1)
           ENDIF
           str%Q10(I4) = D14S+2*D15S
11         CONTINUE
        enddo
100     CONTINUE
1000    CONTINUE
     enddo
  enddo
  WRITE(6,*) ' str%I10  = ',str%I10
  WRITE(6,*) ' str%I11  = ',str%I11
  WRITE(6,*) ' str%R10  = ',str%R10
  WRITE(6,*) ' str%D10  = ',str%D10
  WRITE(6,*) ' D10S = ',D10S
  WRITE(6,*) ' str%L11  = ',str%L11
  WRITE(6,*) ' D11S = ',D11S
  WRITE(6,*) ' str%L13  = ',str%L13
  WRITE(6,*) ' str%D12  = ',str%D12
  WRITE(6,*) ' str%D13  = ',str%D13
  WRITE(6,*) ' str%D14  = ',str%D14
  WRITE(6,*) ' str%Q10  = ',str%Q10
  STOP
END program
SUBROUTINE SUB1(I11)
  INTEGER*4 I11(3,2)
  DO  I=1,2
     DO  J=1,3
        I11(J,I) = J+I
10      CONTINUE
     enddo
  enddo
  RETURN
END SUBROUTINE SUB1
