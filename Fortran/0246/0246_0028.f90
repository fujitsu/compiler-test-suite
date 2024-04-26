PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,start1,END1,L,stride1
CHARACTER,ALLOCATABLE :: arr(:)
CHARACTER :: r1
INTEGER :: r2
REAL :: r
start1=1
END1=5
stride1=1
K=10
L=30
ALLOCATE(arr(5))
arr=(/ 'a','b','c','d','e' /)

DO CONCURRENT(K=start1:END1:stride1,arr(K) >= 'c')
   r=K/2
  DO CONCURRENT(L=ABS(1):ABS(5),CEILING(r) >=2)
    IF(L==2 .AND. K==4) THEN
      r1=ACHAR(K)
      r2=IACHAR(r1)
      IF(.NOT. ALLOCATED(arr)) THEN
        ALLOCATE(arr(5))
        arr=(/ 'a','b','c','d','a' /)
      END IF
    ELSE IF(L==2 .AND. K==3) THEN
      r1=ACHAR(K)
      r2=IACHAR(r1)
      IF(.NOT. ALLOCATED(arr)) THEN
        ALLOCATE(arr(5))
        arr=(/ 'a','b','c','d','a' /)
      END IF
     ELSE
        IF(ALLOCATED(arr)) THEN
          DEALLOCATE(arr)
        END IF

     END IF
    

  END DO
END DO
IF (r2==4 .AND. .NOT. ALLOCATED(arr) .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",r2
END IF
END PROGRAM
