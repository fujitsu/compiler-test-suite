PROGRAM MAIN

  IMPLICIT NONE
  INTEGER :: i, j, k, N
  INTEGER, DIMENSION(0:10) :: foo
  N = 2
  foo = 0
  DO i = 1, 10
     DO j = 0, N
        DO k = j, N
           foo(k) = foo(k) + 1
        END DO
     END DO
  END DO
  WRITE(1,*) foo
 call chk
print *,'pass'
END PROGRAM MAIN
subroutine chk
integer a(11)
rewind 1
read(1,*) a
if (any(a/=(/10,20,30,0,0,0,0,0,0,0,0/)))print *,'error'
end
