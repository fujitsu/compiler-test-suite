PROGRAM MAIN
  INTEGER(8) :: i, j
  CHARACTER(LEN=180) :: filename
  INTEGER, DIMENSION(1:25) :: part
  INTEGER, DIMENSION(1:100), TARGET :: whole
  CHARACTER(LEN=1) :: ichr1
  CHARACTER(LEN=1), DIMENSION(1:30) :: temparray
  temparray(1:30)(1:1) = '0'
   i = 1
     DO j = 1, 25
        part(j) = INT((i-1_8)*25_8+(j-1_8))
     ENDDO
     WRITE(ichr1,'(I1.1)') i
     filename = "fort.999"
     OPEN(10, FILE=filename, ACCESS='STREAM', form='UNFORMATTED')
     WRITE(10) temparray(1:(i-1)*10)
     WRITE(10) part
     CLOSE(10)
     WRITE(10+i,*) temparray(1:(i-1)*10)
     WRITE(10+i,*) part
call chk
print *,'pass'
END PROGRAM MAIN

subroutine chk
  INTEGER(8) :: i, j
  CHARACTER(LEN=180) :: filename
  INTEGER, DIMENSION(1:25) :: part
  INTEGER, DIMENSION(1:25) :: x_part
  INTEGER, DIMENSION(1:25) :: y_part
  INTEGER, DIMENSION(1:100), TARGET :: whole
  CHARACTER(LEN=1) :: ichr1
  CHARACTER(LEN=1), DIMENSION(1:30) :: temparray
  CHARACTER(LEN=1), DIMENSION(1:30) :: x_temparray
  CHARACTER(LEN=1), DIMENSION(1:30) :: y_temparray
  temparray(1:30)(1:1) = '0'
  i = 1
     DO j = 1, 25
        part(j) = INT((i-1_8)*25_8+(j-1_8))
     ENDDO
     WRITE(ichr1,'(I1.1)') i
     filename = "fort.999"
     OPEN(10, FILE=filename, ACCESS='stream', form='UNFORMATTED')
     READ(10) x_part
     CLOSE(10)
     rewind (10+i)
     READ(10+i,*) y_temparray(1:(i-1)*10)
     READ(10+i,*) y_part
     if (any(part/=x_part)) print *,201,i
     if (any(part/=y_part)) print *,202,i
end
