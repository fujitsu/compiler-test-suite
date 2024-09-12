      real * 4 a(10,10,10),b(10,10,10)
      data a,b/1000*1.,1000*2./

      do i=1,10
      do j=1,10
      do k=1,10
        a(i,j,k) = a(i,j,k)+b(i,j,k)
      enddo
      enddo
      enddo
      write(6,*) a(1,1,1)
      stop
      end
