      real * 4 a(10,10),b(10,10)
      data a/100*1./
      data b/10*1.,10*2.,10*3.,10*4.,10*5.,
     +      10*6.,10*7.,10*8.,10*9.,10*10./
      call sub(1,10,2,9,a,b,10,10)
      
      stop
      end
      subroutine sub(n1,n2,m1,m2,a,b,n,m)
      real * 4 a(n,m),b(n,m),c(10)
      data c/1,2,3,4,5,6,7,8,9,10/
      
      do k=1,10
      do j=n1,n2
      do i=m1,m2
        if (b(i,j).gt.1) then
          a(i,j)=a(i,j)+b(i,j) + c(k)
        endif
        if (b(i,j).gt.3) then
          a(i,j)=a(i,j)+b(i,j) + c(k)
        endif
        if (b(i,j).gt.5) then
          a(i,j)=a(i,j)+b(i,j) + c(k)
        endif

        if (b(i,j).gt.6) then
        if (b(i,j).gt.7) then
        if (b(i,j).gt.8) then
        if (b(i,j).gt.9) then
          a(i,j)=a(i,j)+b(i,j) + c(k)
        endif
        endif
        endif
        endif
      enddo
      enddo
      enddo

      write(6,*) a
     
      return
      end
