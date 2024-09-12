      program main
      parameter(n=4)
      real a(n,n),b(n,n),c(n,n)

      call init(b,c)

      do 10 i=1,n
         do 10 j=1,n-1,2
            a(i,j)=b(i,j)+c(i,j)
            a(i,j+1)=b(i,j)*c(i,j)
 10   continue

      write(6,*) a

      end

      subroutine init(x,y)
      parameter(n=4)
      real x(n,n),y(n,n)
      do 10 i=1,n
         do 10 j=1,n
            x(i,j)=i
            y(i,j)=i+j
 10   continue
      end
