      call sub1()
      call sub2()
      end

      subroutine sub1
      real c(5,2)
      logical x(5)/5*.true./
      do 5  i=1,5
         if( x(i) ) then
            c(i,1)=3
            c(i,2)=3
         endif
5       continue
      write(6,*) c
      end

      subroutine sub2
      real*8 c(5,2)
      logical x(5)/5*.true./
      do 5  i=1,5
         if( x(i) ) then
            c(i,1)=3
            c(i,2)=3
         endif
5       continue
      write(6,*) c
      end
