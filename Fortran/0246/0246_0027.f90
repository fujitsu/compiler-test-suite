PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,start1,END1,L,stride1
CHARACTER :: arr(5),r1
INTEGER :: r2,r3
INTEGER :: counter
REAL :: r
start1=1
END1=5
stride1=1
K=10
L=30
counter=0
arr=(/ 'a','b','c','d','e' /)

DO CONCURRENT(K=start1:END1:stride1,arr(K) >= 'c')
   r=K/2

  DO CONCURRENT(L=1:5,CEILING(r) >=2)
    IF(L==2 .AND. (K==4 .OR. K==5)) THEN
      r1=ACHAR(65)
      r2=IACHAR(r1)
      r3=INDEX("Pass","a")
      counter=counter+1
    END IF

  END DO
END DO
IF (r1=='A' .AND. r2==65 .AND. r3==2 .AND. K==10 .AND. L==30 .AND. counter==2) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL ",r1,r2,r3,counter
END IF
END PROGRAM
