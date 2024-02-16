      call sub
      print *,'ok'
      end
      subroutine sub
      character*14 ii
      character*7 dd

      ii = ' '
      dd = '7654321'
      do i=1,7
         ii = dd(1:i)
      enddo
      do i=1,7
         if(ii(1:7).ne.dd(1:7))then
            print *,'ng'
         endif
      enddo
      return
      end
