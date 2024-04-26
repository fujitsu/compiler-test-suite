      integer x4(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      integer x8(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      real y4(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      real*8 y8(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      
      call r4e(10,x4)
      call r4f(10,x4)
      call r4g(10,x4)
      call r4h(10,x4)
      end

      subroutine r4e(n,x)
      integer x(n)
      real*4 h(10)/10*0/
      do i=1,n
         if(x(i).ge.0) h(i) = 2
         if(x(i).ge.2) h(i) = 7
      end do
      write(6,*) h
      end

      subroutine r4f(n,x)
      integer x(n)
      real*4 h(10)/10*0/
      do i=1,n
         if(x(i).ge.0) then
            h(i)=1.0d0
         else if (i .gt.0) then
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r4g(n,x)
      integer x(n)
      real*4 h(10)/10*0/
      do i=1,n
         if(x(i).ge.0) then
         else if (i .gt.0) then
            h(i)=1.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r4h(n,x)
      integer x(n)
      real*4 h(10)/10*0/
      do i=1,n
         if(x(i).ge.0) then
            h(i)=1.0d0
         else if (i .gt.0) then
            h(i)=4.0d0
         else
         end if
      end do
      write(6,*) h
      end
