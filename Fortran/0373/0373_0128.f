      program main
      parameter(n=16)
      real a(n),b(n),c(n),d(n)
      call init(b,c)

      do 100 dummy=1,2
        do 10 i=1,n
           a(i) = b(i)+c(i)
           d(i) = b(i)*c(i)
 10     CONTINUE
 100  CONTINUE

      WRITE(6,*) a,d
      end

      subroutine init(x1,x2)
      parameter(n=16)
      real x1(n),x2(n)
      do 10 i=1,n
         x1(i)=i
         x2(i)=i+50
 10   continue
      end
