      integer :: dres(-2:2)=-1
      namelist /test2/ dres
      call w
      READ(34, nml=test2)

      if(dres(0)/=1)print *,'error-1'
      if(dres(1)/=2)print *,'error-2'
      print *,'pass'

      END
      subroutine w
      write(34,'(a)')'&TEST2 '
      write(34,'(a)')'DRES(0)=1,DRES(1)=2'
      write(34,'(a)')'/'
      rewind 34
      end
