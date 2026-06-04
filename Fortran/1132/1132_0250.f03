!             CVCT6012            LEVEL=2        DATE=89.10.25
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6012                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TEST OF ENTRY MASK                       *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.                                    *C
!********************************************************************C
      PROGRAM  CV6012
!
!     DATA FOR LOOP 1
!
        DATA N/10/
      INTEGER*4 K/2/,J/5/
      REAL*4    X/1/
      REAL*8    Y/2/
      REAL*4     Z2/1/,X2/2.5/,Y2/2.0/
      INTEGER*4  K2/5/,J2/3/

          type st1
      LOGICAL*4 L10(10)/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE., &
                       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./, &
               L11(10)/10*.TRUE./
      INTEGER*4 I10(10)/10*0/,I11(10)/10*0/
      REAL*4    R10(10)/2,1,2,1,1,3,2,1,3,1/
      REAL*8    D10(10)/0,1,2,3,3,0,1,2,1,1/
   end type st1
     type(st1) :: str

!
!     DATA FOR LOOP 2
!
          type st2
      REAL*4     R20(10)/0,1,2,0,1,2,0,1,2,0/
      INTEGER*4  I20(10)/10*0/,I21(10)/10*0/
      LOGICAL*4  L20(10)/.FALSE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,&
                        .TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE./
      COMPLEX*8  C20(10)/4*(0,0),(1,1),5*(0,0)/
      COMPLEX*8  C21(10)/4*(2,2),(1,1),5*(3,3)/
      COMPLEX*8  C22(10)/5*(2,1),5*(1,2)/
      COMPLEX*8  C23(10)/2*(0,0),(2.1,3.1),7*(1,1)/
   end type st2
     type(st2) :: str2

!
      WRITE(6,*) '***** CVCT6012 ***** ENTRY MASK'
      WRITE(6,*) ' ---- LOOP 1 -----'
      DO  I=1,N
        IF ( str%L10(I) ) GO TO 11
          IF ( X .GT. str%R10(I) ) GO TO 12
            GO TO 13
   11     IF ( str%D10(I) .LT. Y ) GO TO 12
            GO TO 13
   12     str%I10(I) = I
   13   CONTINUE
        IF ( X-1.0D01 ) 14,15,15
   14     IF ( str%L11(J) ) GO TO 16
            GO TO 17
   15     IF (-2.0E01 + str%R10(K) ) 16,17,17
   16     str%I11(I) = I*I
   17   CONTINUE
10          CONTINUE
            enddo
      WRITE(6,*) str%I10
      WRITE(6,*) str%I11
!
!
      WRITE(6,*) ' ---- LOOP 2 -----'
      DO  I=1,N
        IF ( Z2 - str2%R20(I) ) 21,22,23
   21     IF ( str2%C20(K2) .EQ. str2%C21(K2) ) GO TO 24
            GO TO 25
   22     IF ( .NOT.str2%L20(J2) ) GO TO 24
            GO TO 25
   23     IF ( X2-Y2 ) 25,24,24
   24     str2%I20(I) = INT(FLOAT(I))
   25   CONTINUE
        IF ( str2%C22(I) .EQ. (1.0,2.0) ) GO TO 26
          IF ( (2.0,3.0) .NE. str2%C23(K2) ) GO TO 27
            GO TO 20
   26     IF ( str2%C22(K2) .EQ. str2%C23(J2)) GO TO 27
            GO TO 20
   27     str2%I21(I) = I
20          CONTINUE
            enddo
      WRITE(6,*) str2%I20
      WRITE(6,*) str2%I21
      STOP
      END
