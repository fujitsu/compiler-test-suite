      DATA J1,J2,J3,J4,J5,J6,J7,J8/8*9999/
      INTEGER L(4)
      CALL S
      READ(1,*,IOSTAT=J1)
      READ(1,*,IOSTAT=J2)I1
      READ(1,*,IOSTAT=J3)I1,I2
      READ(1,*,IOSTAT=J4)I1,I2,I3
      READ(1,*,IOSTAT=J5)(L(M),M=1,2)
      READ(1,*,IOSTAT=J6)(L(M),M=1,2),I4
      READ(1,*,IOSTAT=J7)(L(M),M=1,2),(L(M),M=3,4),I4
      READ(1,*,IOSTAT=J8)I4,(L(M),M=1,2),I5
      READ(1,*,IOSTAT=J9)I9
      PRINT *,'PASS'
      END
      SUBROUTINE S
      WRITE(1,*)
      WRITE(1,*)1
      WRITE(1,*)2,3
      WRITE(1,*)4,5,6
      WRITE(1,*)7,8
      WRITE(1,*)9,10,11
      WRITE(1,*)12,13,14,15,16
      WRITE(1,*)17,18,19,20,21
      REWIND 1
      END
