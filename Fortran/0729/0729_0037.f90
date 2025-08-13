  IMPLICIT NONE

  CHARACTER(LEN=80)   :: data_file
  INTEGER             :: open_status, read_status
  REAL, ALLOCATABLE   :: x(:), y(:)
  INTEGER             :: i, total
  REAL                :: tmp
  real::a,b

  write(86,'(a)')'fort.999'
  rewind 86
  WRITE (85,'(A)',ADVANCE='NO') 'Name of data file (input): '
  READ (86,'(A)') data_file
  write(999,*) 1
  write(999,*) 2
  write(999,*) 3
  close (999)

  OPEN (UNIT=85, FILE=data_file, STATUS='OLD', IOSTAT=open_status)
  IF ( open_status /= 0 ) THEN
     WRITE (*,*) 'Data file "', TRIM(data_file), '" does not exist.'
     WRITE (*,*) 'Execution terminated.'
     STOP
  END IF
  total = 0
  DO
     READ (UNIT=85,FMT=*,IOSTAT=read_status) tmp
     IF ( read_status /= 0 ) EXIT
     total = total + 1
  END DO
  REWIND 85

  ALLOCATE ( x(total) )
  DO i = 1, total
     READ (UNIT=85,FMT=*) x(i)
  END DO
  REWIND 85

  ALLOCATE ( y(total) )
  DO i = 1, total
     READ (UNIT=85,FMT=*) y(i)
  END DO

  CLOSE (UNIT=85)

  DO i = 1, total
     WRITE (87,*) x(i), y(i)
  END DO

  DEALLOCATE ( x, y )
  rewind 87
  read(87,*)a,b;if (abs(a-1)>0.001)write(6,*) "NG";if (abs(b-1)>0.001)write(6,*) "NG"
  read(87,*)a,b;if (abs(a-2)>0.001)write(6,*) "NG";if (abs(b-2)>0.001)write(6,*) "NG"
  read(87,*)a,b;if (abs(a-3)>0.001)write(6,*) "NG";if (abs(b-3)>0.001)write(6,*) "NG"
  print *,'pass'
END
