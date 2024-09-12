      integer*4 i(100)/100*0/
      real*4 a(100)/25*1.0,25*-2.0,25*3.0,25*0.0/
      ii = 0
      call sub(100,a,i,ii)
      write(6,*) ii
      write(6,*) i
      end

      subroutine sub(m,a,i,ii)
      integer*4 i(m)
      real*4 a(m)
      do j=1,m
        if (a(j).gt.0.0) then 
          ii = ii + 1
          i(ii) = 1
        endif
      enddo
      return
      end
