      program main
      integer ia(4,5)
      ii = 4
      iii = 5
      ia(1,2) = 11
      call sub(ii, ia, iii)
      end
      subroutine sub(i, ia, ii)
      integer i, ii, ia(i,ii)
      write(6,*) 'sub'
      return
      end
