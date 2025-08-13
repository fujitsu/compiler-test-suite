      PROGRAM MAIN
      real :: dres(0:10)
      integer :: mres(0:10)
      namelist /test2/ mres, dres

      call w
      READ(31, nml=test2)

      if (any(mres/=(/1,7,9,9,9,9,9,9,9,9,9/)))print *,'error-1'
      if (any(abs(dres-(/1,7,9,9,9,9,9,9,9,9,9/))>0.0001))print *,'error-2'
      print *,'pass'

      END PROGRAM MAIN
      subroutine w
      write(31,'(a)')'&TEST2 '
      write(31,'(a)')'MRES=1 7 9 9 9 9 9 9 9 9 9,'
      write(31,'(a)')'DRES(0:10)=1.00000000 7.00000000 9.00000000 9.00000000 9.00000000 9.00000000 9.00000000 9.00000000 9.00000000 9.00000000 9.00000000'
      write(31,'(a)')'/'
      rewind 31
      end
