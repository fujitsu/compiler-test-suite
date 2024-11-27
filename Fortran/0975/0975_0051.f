      parameter (m=100)
      parameter (n=100)
      integer*4 i,j,l
      integer*8 a(100,100)
      real*4 b(100,100)

      a=1
      j=1
      l=1
      do k=1,m
      do i=1,n
        a(i,k)=j
        j=j+k
        l=j+l
        b(i,k)=l
      enddo
      enddo

      write(6,*) "a(1,1)=",a(1,1)
      write(6,*) "a(1,100)=",a(1,100)
      write(6,*) "a(100,1)=",a(100,1)
      write(6,*) "a(100,100)=",a(100,100)
      write(6,*) "b(1,1)=",b(1,1)
      write(6,*) "b(1,100)=",b(1,100)
      write(6,*) "b(100,1)=",b(100,1)
      write(6,*) "b(100,100)=",b(100,100)
      write(6,*) i
      write(6,*) k
      end
