      complex*8 a(10,10),b(10,10),c(10,10)

      do j=1,10
        do i=1,10
          a(i,j)=(1.,2.)
          b(i,j)=(3.,4.)
          c(i,j)=(0.,0.)
        enddo
      enddo

      do j=1,10
        do k=1,10
          do i=1,10
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo

      print *,c
      end
