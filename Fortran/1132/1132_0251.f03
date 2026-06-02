!             CVCT6013            LEVEL=2        DATE=89.10.03
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6013                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TEST OF EXIT MASK                        *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.11                                  *C
!********************************************************************C
      PROGRAM  CV6013
!
!     DATA FOR LOOP 1
!
        DATA N/10/
          type st1
      LOGICAL*4  L20(10)/.FALSE.,.TRUE., &
                        .FALSE.,.TRUE., &
                        .FALSE.,.TRUE., &
                        .FALSE.,.TRUE., &
                        .FALSE.,.TRUE./
      LOGICAL*4  L21(10)/.FALSE.,.FALSE., &
                        .FALSE.,.TRUE., &
                        .FALSE.,.TRUE., &
                        .FALSE.,.FALSE., &
                        .FALSE.,.TRUE./
      INTEGER*4  I20(10)/1,2,3,4,5,6,7,8,9,10/
      REAL*4     R20(10)/1,1,2,2,3,3,4,4,5,5/
      REAL*8     D20(10)/5*1.0,5*2.0/
      INTEGER*4  I21(10)/1,0,1,0,1,0,1,0,1,0/
   end type st1
     type(st1) :: str
      INTEGER*4  IS/0/,IS1/0/,L/6/
      INTEGER*4  IV2/0.1/,IV3/0/,IV4/0/
      REAL*4     RV1/0./,X/6.0/,Y/0.1/
      REAL*8     DV1/0.0/,DV2/1.0/
!
!
      WRITE(6,*) '***** CVCT6013 ***** EXIT MASK'
      WRITE(6,*) '----- LOOP 1 -----'
      DO  I=1,N
        IF ( str%L20(I) ) THEN
          IF ( str%L21(I) ) THEN
            IS = IS + str%I20(I)
          ENDIF
        ELSE
          IF ( str%L21(L) ) THEN
            IS1 = IS1 + str%I20(I)
          ENDIF
        ENDIF
        IF ( X.GT.5.0 ) THEN
          IF ( str%L20(I) ) THEN
            RV1 = RV1 + str%R20(I)
          ENDIF
        ELSE
          IF ( Y .LE. str%R20(L) ) THEN
            DV1 = DV1 + str%D20(I)
          ENDIF
        ENDIF
        IF ( str%L21(I) ) THEN
        ELSE
          IF ( str%D20(L) .GT. DV2 ) THEN
            IF ( str%L20(I) ) THEN
              IV1 = MAX(MIN(str%I20(I),I),MAX(IV2,str%I21(I)))
              IV3 = IV3 +IV1
            ENDIF
            IF ( X.EQ.Y ) THEN
              IV4 = IV4 + INT(X)
            ENDIF
          ENDIF
        ENDIF
enddo
      WRITE(6,*) IS
      WRITE(6,*) IS1
      WRITE(6,*) RV1
      WRITE(6,*) DV1
      WRITE(6,*) IV3
      WRITE(6,*) IV4
      STOP
      END
