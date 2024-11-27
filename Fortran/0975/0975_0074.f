      integer k,kk
      k = 10
      kk = 20
      call sub(k,kk)
      end
      subroutine sub(m,mm)
      integer m
      parameter (n=200)
      real*8 a(n,n),b(n,n),c(n)
      b = 0
      do k=m,n
      do j=1,n
        do i=mm,n
            a(i,j)=b(i,j)
         enddo
      enddo
      enddo

      write(6,*) 'i=',i,' j=',j

      end

