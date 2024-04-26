      integer x4(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      integer x8(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      real y4(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      real*8 y8(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      
      call r4a(10,x4,y4)
      end
	
      subroutine r4a(n,x,y)
      integer x(n)
      real*4 h(10)/10*0/,y(n)
      do i=1,n
         if(x(i).ge.0) then
            h(i)=4.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r4b(n,x,y)
      integer x(n)
      real*4 h(10)/10*0/,zz,y(n)
      do i=1,n
         if(x(i).ge.0) then
            zz= 4.0d0
         else
            zz= 4.0d0
         end if
         h(i) = zz
      end do
      write(6,*) h
      end


      subroutine r4c(n,x,y)
      integer x(n)
      real*4 h(10)/10*0/,y(n)
      do i=1,n
         if(x(i).ge.0) then
            h(i)=y(i) + 4
         else
            h(i)=y(i) + 4
         end if
      end do
      write(6,*) h
      end

      subroutine r4d(n,x,y)
      integer x(n)
      real*4 h(10)/10*0/,zz,y(n)
      do i=1,n
         if(x(i).ge.0) then
            zz= y(i)+4
         else
            zz= y(i)+4
         end if
         h(i) = zz
      end do
      write(6,*) h
      end

