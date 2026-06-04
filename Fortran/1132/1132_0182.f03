!             CVCT5326            LEVEL=1        DATE=89.08.23
! 1. PROGRAM NAME : CVCT5326
! 2. PURPOSE      : TEXTS EXIST IN TERMINAL BLOCK OF DO LOOP
! 3. RESULT       : INDEX CHANGED
! 4. ENVIRONMENT  :
! 5. HISTORY      : 1985-05-17
PROGRAM CV5326
  type st1
     REAL A(11,10)/110*0.0/,B(11,10)/110*-1/
  end type st1
  type(st1) :: str
  DO J=1,11
     DO K=1,10
        IF(str%B(J,K).EQ.0) GOTO 11
        str%B(J,K)=1.5
11      str%A(J,K)=1.5
     enddo
  enddo
!     CONTINUE
  WRITE(6,*)   K,str%A,str%B
  DO J=1,11
     DO K=1,10
20      str%A(J,K)=3.0
     enddo
  enddo
  WRITE(6,*)   K,str%A,str%B
  DO J=1,11
     DO K=1,9
30      IF(str%B(J,K).EQ.1.5) str%B(J,K)=str%B(J,K)*3.
     enddo
31   str%A(J,K)=4.0
  enddo
  WRITE(6,*)   K,str%A,str%B
END PROGRAM CV5326
