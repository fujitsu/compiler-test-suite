      integer :: dres(-2:2)=-1
      namelist /test2/ dres
      call w
      READ(30, nml=test2)

      if(dres(0)/=1)print *,'error-1'
      if(dres(1)/=2)print *,'error-2'
      print *,'pass'

      END
      subroutine w
      write(30,'(a)')'&TEST2 '
      write(30,'(a)')'DRES(0:1)=1 2'
      write(30,'(a)')'/'
      rewind 30
      end
