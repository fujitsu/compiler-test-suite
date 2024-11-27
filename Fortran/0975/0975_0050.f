      parameter (m=100)
      parameter (n=100)
      integer*4 i,j
      integer*8 a(100,100)

      a=1
      j=1
      do k=1,m
      do i=1,n
        a(i,k)=j
        j=j+k
      enddo
      enddo

      write(6,*) "a(1,1)=",a(1,1)
      write(6,*) "a(1,100)=",a(1,100)
      write(6,*) "a(100,1)=",a(100,1)
      write(6,*) "a(100,100)=",a(100,100)
      write(6,*) "i=",i
      write(6,*) "k=",k
      end
