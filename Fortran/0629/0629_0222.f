      parameter(n=100)
      integer c2a(100,100)/10000*2/

      write(6,*) ' start'
      call sub1(c2a,n)
      write(6,*) ' end'
      end

      subroutine sub1(c2a,n)
      integer c2a(n,n), func3,func5

      do 20 i=1,1
         c2ass=func3(c2a(1,1))
   20 continue

      c1asss=func5(c2a)
      return
      end

      integer function func3(c1a)
      parameter(n=100)
      integer c1a(n),c1ass

      func3=c1a(1)
      do i=1,10
         write(6,*) c1a(i),c1a(i)+1
      enddo
      return
      end

      integer function func5(c2a)
      parameter(n=100)
      integer c2a(n,n),func3

      do 10 i=1,1
           func5=func3(c2a(1,i))
   10 continue
      return
      end function func5
