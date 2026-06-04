!             CVCT6014            LEVEL=4        DATE=89.10.05
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6014                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TEST OF ENTRY & EXIT MASK                *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.                                    *C
!********************************************************************C
PROGRAM  CV6014
  DATA N/10/
  !
  !     DATA FOR LOOP 1
  !
  type st1
     INTEGER*4  I10(10)/1,2,3,4,5,6,7,8,9,10/
     INTEGER*4  I11(10)/1,1,3,3,5,5,7,7,9,9/
     INTEGER*4  I12(10)/1,2,1,2,1,6,0,6,0,10/
     INTEGER*4  I13(10)/1,0,3,5,5,0,0,7,8,7/
     INTEGER*4  I14(10)/0,0,4,4,2,2,3,3,4,4/
     INTEGER*4  I15(10)/2,0,4,1,2,3,4,5,6,7/,I16(10)/10*0/
     COMPLEX*8  C10(10)/10*(0.0,0.0)/,C11(10)/5*(1,1),5*(2,2)/
  end type st1
  type(st1) :: str
  INTEGER*4  I10V/0/
  !
  !     DATA FOR LOOP2
  !
  type st2
     LOGICAL*4  L10(10)/4*.FALSE.,.TRUE.,5*.FALSE./,L11(10)/10*.TRUE./
     LOGICAL*4  L12(10)/4*.FALSE.,.TRUE.,5*.FALSE./,L14(10)/10*.TRUE./
     LOGICAL*4  L13(10)/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE., &
          .TRUE.,.FALSE.,.TRUE.,.FALSE./
     LOGICAL*4  L15(10)/10*.FALSE./,L16(10)/5*.FALSE.,5*.TRUE./
     REAL*8     D20(10)/1,2,3,4,5,6,5,4,3,2/
  end type st2
  type(st2) :: str2
  INTEGER*4  I20V/4/
  REAL*8     D20V/2/
  !
  !     DATA FOR LOOP 3
  !
  type st3
     REAL*4  R30(10)/0,1,2,3,4,5,6,7,8,9/
     REAL*4  R31(10)/1,0,1,2,3,4,5,6,7,10/,R32(10)/10*2.0/
     REAL*4  R33(10)/3,3,2,1,3,2,1,3,2,3/
     REAL*4  R34(10)/10*1.5/,R35(10)/10*1.5/
     REAL*4  R36(10)/1,2,3,4,5,6,7,8,9,10/
     REAL*4  R37(10)/1,2,4,3,5,2,1,7,9,10/,R38(10)/10*0./
  end type st3
  type(st3) :: str3
  INTEGER*4  L/ 8/
  REAL*4  R30V/3./
  !
  WRITE(6,*) '***** CVCT6014 ***** ENTRY & EXIT MASK'
  WRITE(6,*) '----- LOOP 1 -----'
  DO  I=1,N
     IF ( str%I10(I) .EQ. str%I11(I) ) GO TO 11
     IF ( str%I10(I) .NE. str%I12(I) ) GO TO 12
     GO TO 13
11   IF ( str%I10(I) .EQ. str%I13(I) ) GO TO 13
12   IF ( str%I10(L) .NE. str%I14(L) ) GO TO 14
     GO TO 10
13   IF ( str%I10(I) .EQ. str%I15(I) ) GO TO 10
14   str%C10(I) = (1.0,2.0) + str%C11(I)
     str%I16(I) = I
     I10V = I10V + str%I16(I)
10   CONTINUE
  enddo
  WRITE(6,*) str%C10
  WRITE(6,*) str%I16
  WRITE(6,*) I10V
  !
  WRITE(6,*) '----- LOOP 2 -----'
  DO  I=1,N
     IF ( str2%L10(L) ) GO TO 21
     IF ( str2%L11(L) ) GO TO 22
     GO TO 23
21   IF ( str2%L12(L) ) GO TO 23
22   IF ( str2%L13(I) ) GO TO 24
     GO TO 20
23   IF ( str2%L14(L) ) GO TO 20
24   str2%L15(I) = .NOT.str2%L16(I)
     D20V = D20V + str2%D20(I)
     I20V = MAX0(I20V,5)
20   CONTINUE
  enddo
  WRITE(6,*) str2%L15
  WRITE(6,*) D20V
  WRITE(6,*) I20V
  !
  WRITE(6,*) '----- LOOP 3 -----'
  DO  I=1,N
     IF ( str3%R30(I) .GE. str3%R31(I) ) THEN
        IF ( str3%R31(L)  -   5.0 ) 30,31,32
31      IF  ( str3%R32(L) .GE. 1.0 ) GO TO 33
        GO TO 34
32      IF  ( 2.0 .LE. str3%R33(I) ) GO TO 34
33      IF ( str3%R34(I) .EQ. str3%R35(I) ) GO TO 35
        GO TO 30
34      IF ( str3%R36(L) .NE. str3%R37(L) ) GO TO 30
35      str3%R38(I) = I
        R30V = R30V + str3%R38(I)
     ENDIF
30   CONTINUE
  enddo
  WRITE(6,*) str3%R38
  WRITE(6,*) R30V
  STOP
END PROGRAM CV6014
