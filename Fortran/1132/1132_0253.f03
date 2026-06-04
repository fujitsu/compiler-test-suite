!             CVCT6016            LEVEL=2        DATE=83.01.13
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6016                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TEST OF IF STATEMENT ----- COMPLEX       *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.                                    *C
!********************************************************************C
PROGRAM  CV6016
  DATA N/10/
  !
  !     DATA FOR LOOP 1
  !
  type st1
     COMPLEX*8  C10(10),C11(10),C12(10),C13(10),C14(10)
     INTEGER*4  I10(10),I11(10),I12(10),I13(10)
  end type st1
  type(st1) :: str
  !
  COMPLEX*8  CV10,CV11,CV12
  INTEGER*4  L/3/,M/5/
  DATA  str%C10/(1,2),(2,2),(1,2),(3,3),(1,2),(2,1),(1,2),(2,3),(1,2), (1,2)/
  DATA  str%C11/(1,3),(0,0),(2,2),(0,3),(1,2),(0,1),(2,2),(1,1),(1,3), (3,1)/
  DATA  str%I10,str%I11,str%I12,str%I13/40*0/
  DATA  str%C12/5*(1,1),5*(2,2)/,str%C13/5*(0,0),5*(3,3)/
  data str%C14/5*(1,0),5*(3,2)/,CV10/(2,2)/,CV11/(1,1)/,CV12/(1,1)/
  !
  !     DATA FOR LOOP 2
  !
  type st2
     COMPLEX*16 CD20(10),CD21(10),CD22(10)
     INTEGER*4  I20(10),I21(10),I22(10)
  end type st2
  type(st2) :: str2

  COMPLEX*16 CDV20,CDV21,CDV22,CDV23, CDV24
  !
  DATA  str2%CD20/2*(1,1),2*(0,0),2*(2,2),2*(3,3),2*(0,1)/
  data str2%CD21/2*(1,1),2*(1,0),2*(2,2),2*(3,1),2*(0,1)/
  data str2%CD22/5*(1,1),5*(0,1)/,CDV20/(0,1)/,CDV21/(3,2)/
  data CDV22/(4,3)/,CDV23/(2,2)/,CDV24/(3,1)/
  DATA  str2%I20,str2%I21,str2%I22/30*0/
  !
  !  LOOP 1
  WRITE(6,*) '***** CVCT6016 ***** IF (COMPLEX)'
  WRITE(6,*) '----- LOOP 1 -----'
  DO  I=1,N
     IF ( str%C10(I) .EQ. (1.0,2.0) ) THEN
        IF ( (2.0,2.0) .NE. str%C11(I) )  THEN
           str%I10(I) = I
        ENDIF
        IF ( str%C10(L) .EQ. str%C11(M) )     THEN
           str%I11(I) = I
        ENDIF
     ENDIF
     IF ( str%C12(I) .EQ. str%C13(I) ) GO TO 10
     IF ( str%C14(I).NE. CV10 ) str%I12(I) = I
     IF ( CV11  .EQ. CV12 ) str%I13(I) = I
10   CONTINUE
  enddo

  WRITE(6,*) str%I10
  WRITE(6,*) str%I11
  WRITE(6,*) str%I12
  WRITE(6,*) str%I13
  !
  !  LOOP 2
  !
  WRITE(6,*) '----- LOOP 2 -----'
  DO  I=1,N
     IF ( str2%CD20(I) .EQ. str2%CD21(I) ) GO TO 21
     IF ( str2%CD22(I) .NE. CDV20   ) GO TO 21
     GO TO 22
21   str2%I20(I) = I
22   IF ( str2%CD22(I) .NE. CDV20   ) GO TO 23
     IF ( CDV21   .EQ. str2%CD22(I) ) GO TO 23
     IF ( str2%CD22(I) .NE. CDV22   ) GO TO 23
     GO TO 24
23   str2%I21(I) = I
24   IF ( str2%CD20(L) .EQ. str2%CD21(L))  GO TO 25
     IF ( str2%CD20(L) .NE. CDV23  )  GO TO 25
     IF ( CDV24   .EQ. str2%CD21(L))  GO TO 25
     GO TO 20
25   str2%I22(I) = I
20   CONTINUE
  enddo
  WRITE(6,*) str2%I20
  WRITE(6,*) str2%I21
  WRITE(6,*) str2%I22
  STOP
END PROGRAM CV6016
