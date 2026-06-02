      PROGRAM  OPR
        type TAG
           LOGICAL*4 LA,LB
           INTEGER*4 IA,IB
           REAL   *4 RA,RB,RC
        end type TAG
        type (TAG) st(10)
!
        st%LA = .true.
        st%LB = .true.
        st%IA = (/1,3,4,2,5,6,8,7,9,10/)
        st%IB = 1
        st%RA = 1
        st%RB = 1
        st%RC = 1
!
      S=0
      DO  10  I= 1,100
        IF(I.LE.10) THEN
          S=S+st(I)%RC
          st(st(I)%IA)%RA=st(I)%RB
          st(I)%LA=st(I)%RC.GE.st(I)%RB
          st(st(I)%IA)%LB=st(I)%LA
        ENDIF
 10   CONTINUE
!
      WRITE(6,*) '*** CVCTOPR ***'
      WRITE(6,*) 'LA= ',st%LA
      WRITE(6,*) 'LB= ',st%LB
      WRITE(6,*) 'RA= ',st%RA
      WRITE(6,*) 'RB= ',st%RB
      WRITE(6,*) 'RC= ',st%RC
      WRITE(6,*) 'S = ',S
      STOP
      END
