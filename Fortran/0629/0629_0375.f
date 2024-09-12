      parameter(n=100)
      real*4 a(n,n),b(n,n),c(n,n)

      data a/10000*1/
      data b/10000*2/
      data c/10000*0/

      do j=1,n
        do k=1,n
          do i=1,n
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo

      print *,c(1,1)
      end
