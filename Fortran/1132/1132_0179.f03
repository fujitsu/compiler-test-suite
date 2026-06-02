!             CVCT5323            LEVEL=1        DATE=89.08.23
! 1. PROGRAM NAME : CVCT5323
! 2. PURPOSE      : A PATH EXISTS BEFORE AND AFTER THE MAB
! 3. RESULT       : IF ASTER OPTION IS SPECIFIED, DVT IS GENERATED
! 4. PURPOSE      : IF NO ASTER, DVT IS NOT GENERATED
! 5. HISTORY      : 1985-02-26
PROGRAM CV5323

  type st1
     REAL A(10)/10*90./,B(10,10)/70*2.5,30*4/
  end type st1
  type(st1) :: str
  DATA N,L/10,0/
  DO L=1,N
     IF(L.EQ.0) GOTO 11
     DO I=1,N
        S=str%A(I)
        DO J=1,N
           S=S+str%B(I,J)
        enddo
        str%A(I)=S
     enddo
11   WRITE(6,*) str%A
  enddo
  L=L+1
  STOP
END PROGRAM CV5323
