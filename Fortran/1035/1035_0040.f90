      integer :: dres(-2:2)=-1     
      namelist /test2/ dres
      call w
      READ(3, nml=test2)

      if(dres(-1)/=1)print *,'error-1'
      if(dres(0)/=2)print *,'error-2'
      print *,'pass'

      END
      subroutine w
      write(3,'(a)')'&TEST2 '
      write(3,'(a)')'DRES(-1:0)=1 2'
      write(3,'(a)')'/'
      rewind 3
      end
