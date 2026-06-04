  !             CVCT6106            LEVEL=2        DATE=83.02.07
  !********************************************************************C
  !*  1. PROGRAM NAME   :  CVCT6106                                   *C
  !*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
  !*                       .                                          *C
  !*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
  !*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
  !*  5. HISTORY        :  1983.1.                                    *C
  !********************************************************************C
  DATA N10/10/
  !
  !     DATA FOR NO.1
  !
  type st1
     INTEGER*4  I10(10)/1,2,1,4,0,1,2,1,1,1/
     integer I10S/0/,I11(10)/10*0/, I11S/0/ ,I12S/1/
     integer I12(10)/1,2,3,-4,5,-6,4,3,2,1/
     REAL*4     R10S/0/ , R10(10)/1,2,3,4,5,4,3,-5,2,10/,R11S/0/
     real R11(10)/12,23,24,35,46,57,78,78,99,100/
     REAL*8    D10S/0/,D10(10)/-1,-2,-3,-4,-5,1,2,3,4,5/,D11(10)/10*0/
     COMPLEX*8  C10S/(0,0)/, C10(10)/3*(1,1),2*(1,0),2*(0,1),3*(0,0)/
  end type st1
  type(st1) :: str
  !
  WRITE(6,*) '***** CVCT6106 *****'
  DO  I=1,N10
     GO TO (101,102,100) str%I10(I)
     !
101  DO  J=1,N10
        str%I10S = str%I10S + str%I11(I)
        IF ( str%D10S .GT. str%D10(J) ) THEN
           str%D10S = str%D10(J)
           str%I11S = J
        ELSE
           str%C10S = str%C10S - str%C10(J)
        ENDIF
        str%R10S = AMAX1(str%R10S,str%R10(I))
        !
        DO  K=1,N10
           str%I12S = str%I12S + str%I12(K)
           str%R11S = str%I12S + str%R11S
11         str%D11(K) = str%R11S
        enddo
        !
        str%I11(I) = str%I10(I)*8
        str%D10(I) = str%I11(I) - I
        str%R10(I) = str%R11(I)/2. + str%R11(I)*4.
10      CONTINUE
     enddo
     !
102  WRITE(6,*) ' SECONDARY LOOP BYPASS  I = ',I
100  CONTINUE
  enddo
  !
  WRITE(6,*) ' str%I10S = ',str%I10S
  WRITE(6,*) ' str%D10S = ',str%D10S,' str%I11S = ',str%I11S
  WRITE(6,*) ' str%C10S = ',str%C10S
  WRITE(6,*) ' str%R10S = ',str%R10S
  WRITE(6,*) ' str%D11  = ',str%D11
  WRITE(6,*) ' str%I11  = ',str%I11
  WRITE(6,*) ' str%D10  = ',str%D10
  WRITE(6,*) ' str%R10  = ',str%R10
  WRITE(6,*) ' str%I12S = ',str%I12S
  WRITE(6,*) ' str%R11S = ',str%R11S
  WRITE(6,*) ' str%D11  = ',str%D11
  STOP
END program
