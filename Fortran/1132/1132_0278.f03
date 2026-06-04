  !             CVCT6110            LEVEL=4        DATE=83.02.22
  !********************************************************************C
  !*  1. PROGRAM NAME   :  CVCT6110                                   *C
  !*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
  !*                       .                                          *C
  !*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
  !*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
  !*  5. HISTORY        :  1983.1.                                    *C
  !********************************************************************C
  DATA N1/1/,N10/10/
  !
  !     DATA DECLARATION
  !
  type st1
     REAL*4     R10(10,2),R11(10,2),R12(10,2)
     REAL*8     D10(10,2),D11(10,2)
     COMPLEX*8  C10(10,2),C11(10,2)
     INTEGER*4  I10(10)
     REAL*8     Q10(10,2),Q10S
     LOGICAL*1  LB
     COMPLEX*16 CQ10(10,2)
  end type st1
  type(st1) :: str
  !
  DATA  str%R10/20*0/, str%R11/4*25,4*36,4*144,4*9,4*100/, &
       str%R12/10*1, 5*0,5*0.333/ ,str%D10/10*1,10*2/,str%D11/5*1,5*2,5*1,5*3/, &
       str%C10/20*(0,0)/,str%C11/5*(1,1),5*(0,1),5*(1,0),5*(0,0)/, &
       str%I10/1,2,3,1,2,3,0,1,2,3/,I10S/2/, str%Q10/20*0/,str%Q10S/0/, &
       str%CQ10/5*1,5*5,3*8,2*2,5*7/ ,str%LB/.FALSE./
  !
  !
  WRITE(6,*) '***** CVCT6110 *****'
  DO  J=1,N1
     DO  I=2,N10
        str%R10(I,J) = SQRT(str%R11(I,J)) + SIN(str%R12(I,J))
        str%D10(I,J) = str%D10(I,J)**str%D11(I,J) + DBLE(str%R10(I,J))
        str%C10(I,J) = CABS(str%C11(I,J)) + CMPLX(str%D10(I,J))
        str%I10(I) = str%I10(I)*I10S + INT(str%C10(I,J))
        str%Q10(I,J) = DBLE(str%R10(I,J)) + str%D10(I,J) &
             - DBLE(str%C10(I,J)) - DREAL(str%CQ10(I,J))
        str%Q10S = str%Q10(I,J) +  str%I10(J)
        CALL SUB1(str%Q10,str%Q10S)
        WRITE(6,*) ' str%Q10S = '
        WRITE(6,10000) str%Q10S
10000   FORMAT(F15.5/)
        str%LB = str%Q10S .GE. str%Q10(I,J)
        IF ( str%LB ) str%CQ10(I,J) = CMPLX(str%I10(I))
        !
        str%R10(I,J) = str%R10(I,J) + REAL(str%I10(I)) + SNGL(str%D10(I,J))
        str%C10(I,J) = str%Q10(I,J) + str%C10(I,J) + CMPLX(str%I10(I))
        str%D10(I,J) = str%D10(I,J)**str%D11(I,J) + CABS(str%C11(I,J))+CMPLX(str%D10(I,J))
        str%I10(I-1) = INT(str%C10(I,J)) + str%Q10S
10      CONTINUE
     enddo
100  CONTINUE
  enddo
  !
  WRITE(6,*) ' str%R10  = '
  WRITE(6,10001) str%R10
10001 FORMAT(7F10.3/)
  WRITE(6,*) ' str%D10  = '
  WRITE(6,10001) str%D10
  WRITE(6,*) ' str%C10  = '
  WRITE(6,10001) str%C10
  WRITE(6,*) ' str%I10  = ',str%I10
  WRITE(6,*) ' str%Q10  = '
  WRITE(6,10001) str%Q10
  WRITE(6,*) ' str%Q10S = '
  WRITE(6,10001) str%Q10S
  WRITE(6,*) ' str%CQ10 = '
  WRITE(6,10001) str%CQ10
  STOP
END program
SUBROUTINE SUB1(Q10,Q10S)
  REAL*8   Q10(10,2) ,Q10S
  Q10S = Q10S + Q10(5,1)
  RETURN
END SUBROUTINE SUB1
