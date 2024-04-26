      integer x4(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      integer x8(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      complex*8 y4(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      complex*16 y8(10)/5,5,-1,0,5,-1,-1,5,0,-1/
      
      call r4a(10,x4)
      call r8a(10,x8)
      call r4b(10,y4)
      call r8b(10,y8)
      call r4c(10,x4)
      call r8c(10,x8)

      call r4a(9,x4)
      call r8a(9,x8)
      call r4b(9,y4)
      call r8b(9,y8)
      call r4c(9,x4)
      call r8c(9,x8)
      end
	
      subroutine r4a(n,x)
      integer x(n)
      complex*8 h(10)/10*0/
      do i=1,n
         if(x(i).eq.0) then
            h(i)=1.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r8a(n,x)
      integer x(n)
      complex*16 h(10)/10*0/
      do i=1,n
         if(x(i).eq.0) then
            h(i)=1.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r4b(n,x)
      complex*8 h(10)/10*0/,x(n)
      do i=1,n
         if(x(i).eq.0) then
            h(i)=1.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r8b(n,x)
      complex*16 h(10)/10*0/,x(n)
      do i=1,n
         if(x(i).eq.0) then
            h(i)=1.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r4c(n,x)
      integer x(n)
      complex*8 h(10)/10*0/
      do i=1,n
         if(i.gt.5) then
            h(i)=1.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r8c(n,x)
      integer x(n)
      complex*16 h(10)/10*0/
      do i=1,n
         if(i.gt.5) then
            h(i)=1.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end
