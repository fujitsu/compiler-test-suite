      call sub(10_8,10_8)
      stop
      end 
      subroutine sub(m,l)
      integer*8 i,j,k,l,m
      integer*8 n
      integer*4 a(10,10,10),b(10,10,10),c(10,10,10)
      data a/1000*1./
      data b/1000*2./
      data c/1000*3./

      do k=1,l
         do j=1,m
            do i=1,10
               a(i,j,k) = a(i,j,k)+1
            enddo
         enddo
      enddo
      write(6,*) a
      end
