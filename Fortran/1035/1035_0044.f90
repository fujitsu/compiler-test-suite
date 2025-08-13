      PROGRAM MAIN
      integer :: dres(-20:11)
      integer :: mres(11)
      namelist /test2/ mres, dres
      call w
      READ(33, nml=test2)

      if (any(mres/=(/1,7,9,9,9,9,9,9,9,9,9/)))print *,'error-1'
      if (any(abs(dres(0:10)-(/1,7,9,9,9,9,9,9,9,9,9/))>0.0001))print *,'error-2'
      print *,'pass'

      END PROGRAM MAIN
      subroutine w
      write(33,'(a)')'&TEST2 '
      write(33,'(a)')'MRES=1 7 9 9 9 9 9 9 9 9 9,'
      write(33,'(a)')'DRES(0:10)=1 7 9 9 9 9 9 9 9 9 9'
      write(33,'(a)')'/'
      rewind 33
      end
