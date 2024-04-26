      PROGRAM MAIN
      INTEGER A,B
      CHARACTER C*8,D*3,E*5
      CHARACTER*8 FILE1,FILE2(2)
      CHARACTER*8 FILE3,FILE4(2)
      WRITE(6,*)'#### START ####'
      FILE1=' 100 200'
      FILE2(1)=' FORTRAN'
      FILE2(2)='77 TEST1'
      READ(FILE1,'(2I4)') A,B
      READ(FILE2(1),'(A8)') C
      READ(FILE2(2)(1:3),'(A3)') D
      READ(FILE2(2)(4:8),'(A5)') E
      WRITE(FILE3,'(2I4)') A,B
      WRITE(FILE4(1),'(A8)') C
      WRITE(FILE4(2)(1:3),'(A3)') D
      WRITE(FILE4(2)(4:8),'(A5)') E
      WRITE(6,*) FILE3,FILE4
      WRITE(6,*)'####  END  ####'
      END
