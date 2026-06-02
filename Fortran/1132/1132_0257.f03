!             CVCT6020            LEVEL=4        DATE=83.01.22
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6020                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TOTAL TEST OF IF STATEMENT               *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.                                    *C
!********************************************************************C
PROGRAM  CV6020
  DATA  N/10/
  !
  !     DATA FOR LOOP 1
  !
  type st1
     LOGICAL*4  L10(10),L11(10),L12(10),L13(10)
     INTEGER*4  I10(10),I11(10),I12(10)
     REAL*4     R10(10),R11(10),R12(10)
     REAL*8     D10(10),DV10
     COMPLEX*8  C10(10),C11(10),C12(10),C13(10),C14(10)
  end type st1
  type(st1) :: str
  LOGICAL*4  LV10
  !
  DATA  str%L10/6*.FALSE.,.TRUE.,3*.FALSE./,L/5/, &
       str%I10/1,2,3,4,5,6,7,8,9,10/,M/7/,IV10/7/,str%R10/10*8/,str%R11/10*6/, &
       str%C10/10*(1,1)/,DV10/0/, &
       str%L11/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE., &
       .TRUE.,.FALSE.,.TRUE./ &
       str%L13/2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./, &
       str%I11/10*0/,str%I12/1,4,9,9,4,1,1,4,9,4/, &
       str%C11/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9), &
       (10,10)/,str%C12/(1,1),(1,1),(3,3),(3,3),(5,5),(5,5),(7,7), &
       (7,7),(9,9),(9,9)/,str%L12/10*.FALSE./, &
       lV10/.TRUE./,str%C13/10*(2,2)/,str%C14/10*(1,2)/,R11V/0/, &
       str%R12/1,2,3,4,5,6,7,8,9,10/,str%D10/10*0/,J/5/

  DO  I=1,N
     IF ( .NOT.str%L10(M) ) GO TO 11
     IF ( str%I10(M) .LE. IV10 ) GO TO 12
     GO TO 10
11   IF ( str%R10(M) .GT. str%R11(L) ) GO TO 12
     GO TO 15
     !  ENTRY  RC , RC   EXIT V  -------
12   CONTINUE
     str%C10(I) = I
     DV10 = DV10 + DBLE(str%C10(I))
     IF ( str%L11(I) ) GO TO 13
     !  ENTRY (RC,V)     EXIT V  -------
     str%I11(I) = INT(SQRT(FLOAT(str%I12(I)))) ** I
     IF ( str%C11(I) .EQ. str%C12(I) ) GO TO 14
     GO TO 10
     !  ENTRY (RC,V)     EXIT RC
13   CONTINUE
     str%L12(I) = .NOT.str%L13(I) .AND. lV10
     str%C13(I) = str%C13(I)/str%C10(I)
     IF ( str%C14(L) .NE. (1.0,1.0) ) GO TO 14
     GO TO 10
     !  ENTRY (RC,V),(RC,V)   EXIT   V ------
14   CONTINUE
     R10V = I
     R11V = R11V +(str%R12(I) + R10V)
     !  ENTRY  V , RC    EXIT
15   CONTINUE
     str%D10(J) = str%D10(J) + I
10   CONTINUE
  enddo
  WRITE(6,*) 'str%C10  = ',str%C10
  WRITE(6,*) 'DV10 = ',DV10
  WRITE(6,*) 'str%I11  = ',str%I11
  WRITE(6,*) 'str%L12  = ',str%L12
  WRITE(6,*) 'str%C13  = ',str%C13
  WRITE(6,*) 'R11V = ',R11V
  WRITE(6,*) 'str%D10  = ',str%D10
  STOP
END PROGRAM CV6020
