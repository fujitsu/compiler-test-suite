      real dvt(0:9),tmp(10)
      do i=1,10
         tmp(i) = i
      enddo

      do i=0,9
        dvt(i)=tmp(10-i)
      end do
      write(6,*) dvt
      end
