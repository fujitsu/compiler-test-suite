      program main
      integer ia(4,5)
      ii = 4
      ia(1,2) = 11
      call sub(ii, ia)
      end
      subroutine sub(i, ia)
      integer i, ia(i,*)
      write(6,*) 'sub'
      return
      end
