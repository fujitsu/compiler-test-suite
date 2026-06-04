!             CVCT6011            LEVEL=2        DATE=83.01.13
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6011                                   C*
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         C*
!*                       . TEST OF IF STATEMENTS                    C*
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          C*
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.10                                  *C
!********************************************************************C
PROGRAM  CV6011
  !
  !     DATA FOR LOOP 1
  !
  DATA N/10/
  type st1
     LOGICAL*4  L10(10)/2*.TRUE.,3*.FALSE.,2*.TRUE.,3*.FALSE./
     INTEGER*4  I10(10)/10*0/
     REAL*4     R10(10)/10*0./
     REAL*8     D10(10)/10*0./
     COMPLEX*8  C10(10)/10*(0.,0.)/
  end type st1
  type(st1) :: str
  !
  !     DATA FOR LOOP 2
  !
  DATA M/10/
  type st2
     INTEGER*4 I20(10)/10*0/,I21(10)/1,2,3,4,5,1,2,3,4,3/
     REAL*4    R20(10)/-1,0,1,2,-3,-4,0,0,1,3/,R21(10)/10*0./
     LOGICAL*4 L20(11)/2*.TRUE.,4*.FALSE.,.TRUE.,.FALSE.,3*.TRUE./
     REAL*8    D20(10)/10*0./
     COMPLEX*8 C20(10)/10*(0.,0.)/
  end type st2
  type(st2) :: str2
  integer L/6/
  !
  WRITE(6,*) '***** CVCT6011 ***** TEST OF IF STATEMENTS'
  WRITE(6,*) ' ***** LOOP 1 *****'
  DO  I=1,N
     IF(str%L10(I)) str%I10(I)=I
     IF(str%L10(I)) THEN
        str%R10(I) = I
     ELSE
        str%R10(I) = -I
     ENDIF
     IF ( str%R10(I)) 20,30,40
20   str%D10(I) = I+I
     GO TO 15
30   str%D10(I) = I*I
     GO TO 15
40   str%D10(I) = 2*I
     GO TO 15
15   IF ( str%I10(I).NE.I) GO TO 10
     str%C10(I) = I
10   CONTINUE
  enddo
  WRITE(6,*) str%I10,str%R10
  WRITE(6,*) str%D10
  WRITE(6,*) str%C10
  !
  WRITE(6,*) ' ***** LOOP 2 *****'
  DO  J=1,M
     IF ( str2%R20(L) ) 300,400,500
400  str2%I20(J) = J
     GO TO 250
500  str2%I20(J) = 0
     GO TO 250
300  str2%I20(J) = -J
250  IF ( str2%L20(L+1) ) THEN
        str2%D20(J) = J + J
     ELSE
        str2%D20(J) = J * J
     ENDIF
     IF ( str2%L20(L) ) str2%R21(J) = 3*J
     IF ( str2%I21(L).GT. 3 ) GO TO 200
     str2%C20(J) = J
200  CONTINUE
  enddo
  WRITE(6,*) str2%I20
  WRITE(6,*) str2%D20
  WRITE(6,*) str2%R21
  WRITE(6,*) str2%C20
  STOP
END PROGRAM CV6011
