      integer x4(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      integer x8(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      real y4(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      real*8 y8(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      
      call r4a(10,x4)
      call r4b(10,x4)
      call r4c(10,x4)
      call r4d(10,x4)
      end
	
      subroutine r4a(n,x)
      integer x(n)
      real*4 h(10)/10*0/
      do i=1,n
         if (i.gt.5) then
            if(x(i).ge.0) then
               h(i)=1.0d0
            else
               h(i)=4.0d0
            end if
         endif
      end do
      write(6,*) h
      end

      subroutine r4b(n,x)
      integer x(n)
      real*4 h(10)/10*0/
      do i=1,n
         if(x(i).ge.0) then
            h(i)=1.0d0
         else if (x(i) .gt.2) then
            h(i)=5.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r4c(n,x)
      integer x(n)
      real*4 h(10)/10*0/
      do i=1,n
         if(x(i).ge.0) then
            h(i)=1.0d0
         else
            if (i.gt.5) then
               h(i)=4.0d0
            endif
         end if
      end do
      write(6,*) h
      end

      subroutine r4d(n,x)
      integer x(n)
      real*4 h(10)/10*0/
      do i=1,n
         h(i) = 4.0
         if(x(i).ge.0) then
            h(i)=1.0d0
         end if
      end do
      write(6,*) h
      end

