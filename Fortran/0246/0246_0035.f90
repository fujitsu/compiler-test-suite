PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,X,L,d1,d2
INTEGER,ALLOCATABLE :: arr(:)
X=0
K=10
L=30
DO CONCURRENT(K=1:5)
  IF(.NOT. ALLOCATED(arr)) THEN
    ALLOCATE(arr(5))
    arr=(/ 1,2,3,4,5 /)
  END IF

  IF(arr(K)<3 .OR. arr(K)==5) THEN
    DO d1=1,K
     DO CONCURRENT(L=1:4)
       DO d2=1,L,K
          X=X+1
        END DO
      END DO
    END DO
  END IF
END DO
IF (X == 42 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",X
END IF
END PROGRAM
