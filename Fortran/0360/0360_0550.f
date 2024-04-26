      integer mask1(10)/5*-5,5*10/
      real mask2(10)/5*-5,5*10/
      call r4a(10)
      call r4b(10,mask1)
      call r4c(10)
      call r4d(10,mask2)
      end

      subroutine r4a(n)
      integer,volatile:: x(10)/5*-5,5*10/
      real*4 h(10)/10*0/
      do i=1,n
         if(x(i).ge.0) then
            h(i)=1.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r4b(n,x)
      integer x(10)
      real*4,volatile:: h(10)/10*0/
      real*4 hh
      do i=1,n
         if(x(i).ge.0) then
            hh=1.0d0
         else
            hh=4.0d0
         end if
         h(i) = hh
      end do
      write(6,*) h
      end

      subroutine r4c(n)
      real,volatile:: x(10)/5*-5,5*10/
      real*4 h(10)/10*0/
      do i=1,n
         if(x(i).ge.0) then
            h(i)=1.0d0
         else
            h(i)=4.0d0
         end if
      end do
      write(6,*) h
      end

      subroutine r4d(n,x)
      real x(10)
      real*4 h(10)/10*0/
      real*4,volatile:: hh
      do i=1,n
         if(x(i).ge.0) then
            hh=1.0d0
         else
            hh=4.0d0
         end if
         h(i) = hh
      end do
      write(6,*) h
      end

