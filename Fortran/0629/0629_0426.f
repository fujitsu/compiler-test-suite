      program main
      real a(10),b(10),c(10)

      do i=1,10
         a(i)=i
      enddo
      do j=1,10
         b(j)=j
      enddo
      do k=1,10
         c(k)=k
      enddo

      print *,i,j,k
      print *,a
      print *,b
      print *,c
      end
