      program main
      parameter(n=16)
      real a(n),b(n),c(n),d(n),e(n),f(n),g
      call init(b,c,d,e,f,g)

      do 100 dummy=1,2
        do 10 i=1,n
           a(i) = b(i)+c(i)+d(i)+e(i)+f(i)+g
 10     CONTINUE
 100  CONTINUE

      WRITE(6,*) a
      end

      subroutine init(x1,x2,x3,x4,x5,x6)
      parameter(n=16)
      real x1(n),x2(n),x3(n),x4(n),x5(n),x6
      do 10 i=1,n
         x1(i)=i
         x2(i)=i+50
         x3(i)=i+100
         x4(i)=i+150
         x5(i)=200
 10   continue
      x6=250
      end
