      INTEGER,ALLOCATABLE,DIMENSION(:)::    I4ARAY,I1ARAY,I2ARAY,I3ARAY
      REAL,ALLOCATABLE,DIMENSION(:)::       R4ARAY
      REAL*8,ALLOCATABLE,DIMENSION(:)::     RDARAY
      COMPLEX*8,ALLOCATABLE,DIMENSION(:)::  CXARAY
      COMPLEX*16,ALLOCATABLE,DIMENSION(:):: CYARAY
      INTEGER                           N,DM,I/1/,J/1/,K/0/
      LOGICAL                           NO_GOOD/.FALSE./
C
      N = 10
      IF (I.EQ.J) THEN
        ALLOCATE (I4ARAY(N))
        I4ARAY(:) = 10
      ENDIF

      IF (I.EQ.J) THEN
        ALLOCATE (R4ARAY(N))
        R4ARAY(:) = 10.0
      ELSEIF (I.EQ.K) THEN
        IWORK = 1
      ENDIF

      IF (I.EQ.K) THEN
        IWORK = 2
      ELSEIF (I.EQ.J) THEN
        ALLOCATE (RDARAY(N))
        RDARAY(:) = 10.0
      ENDIF

      IF (I.EQ.J) THEN
        ALLOCATE (CXARAY(N))
        CXARAY(:) = (10.0,10.0)
      ELSE
        IWORK = 3
      ENDIF

      IF (I.EQ.K) THEN
        IWORK = 4
      ELSE
        ALLOCATE (CYARAY(N))
        CYARAY(:) = (10.0,10.0)
      ENDIF

      IF (I.EQ.J) THEN
        ALLOCATE (I1ARAY(N))
        I1ARAY(:) = 10
      ELSEIF (I.EQ.K) THEN
        IWORK = 5
      ELSE
        IWORK = 6
      ENDIF

      IF (I.EQ.K) THEN
        IWORK = 7
      ELSEIF (I.EQ.J) THEN
        ALLOCATE (I2ARAY(N))
        I2ARAY(:) = 10
      ELSE
        IWORK = 8
      ENDIF

   10 IF (I.EQ.K) THEN
        IWORK = 9
   20 ELSEIF (J.EQ.K) THEN
        IWORK = 10
   30 ELSE
        ALLOCATE (I3ARAY(N))
        I3ARAY(:) = 10
   40 ENDIF

      IF (I.EQ.J) THEN
        IWORK = 11
      ELSEIF (I.EQ.K) THEN
        IWORK = 12
      ELSE
        IWORK = 13
      ENDIF
C
      DO 200 DM=1,10
        IF (I4ARAY(DM) .NE. 10          ) NO_GOOD = .TRUE.
        IF (R4ARAY(DM) .NE. 10.0        ) NO_GOOD = .TRUE.
        IF (RDARAY(DM) .NE. 10.0        ) NO_GOOD = .TRUE.
        IF (CXARAY(DM) .NE. (10.0,10.0) ) NO_GOOD = .TRUE.
        IF (CYARAY(DM) .NE. (10.0,10.0) ) NO_GOOD = .TRUE.
        IF (I1ARAY(DM) .NE. 10          ) NO_GOOD = .TRUE.
        IF (I2ARAY(DM) .NE. 10          ) NO_GOOD = .TRUE.
        IF (I3ARAY(DM) .NE. 10          ) NO_GOOD = .TRUE.
  200 CONTINUE
      IF (NO_GOOD) THEN
        WRITE (6,*) 'NG'
        WRITE(6,1000)
        DO 300 DM = 1,10
           WRITE(6,2000) DM,I4ARAY(DM),R4ARAY(DM),RDARAY(DM)
     @          ,CXARAY(DM),CYARAY(DM)
     @          ,I1ARAY(DM),I2ARAY(DM),I3ARAY(DM)
 300    CONTINUE
      ELSE
         WRITE (6,*) 'OK'
      ENDIF
 1000 FORMAT(1H ,'DM I4ARAY R4ARAY RDARAY    CXARAY        CYARAY     I
     @ARAY I2ARAY I3ARAY')
 2000 FORMAT(1H ,I2,I7,6F7.2,3I7)
      DEALLOCATE (I4ARAY,R4ARAY,RDARAY,CXARAY,CYARAY
     @    ,I1ARAY,I2ARAY,I3ARAY)

      END
