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
      integer x(10)
      real*4 h(10)/10*0/
      complex*8 dd(10)/1,2,3,4,5,6,7,8,9,10/,zz
      do i=1,n
         if (x(i).gt.0) then
            zz = 10 + dd(i)
         else
            zz = dd(i)
         endif
         h(i) = zz + 20
      end do
      write(6,*) h
      end

      subroutine r8a(n,x)
      integer x(10)
      real*8 h(10)/10*0/
      complex*16 dd(10)/1,2,3,4,5,6,7,8,9,10/,zz
      do i=1,n
         if (x(i).gt.0) then
            zz = 10 + dd(i)
         else
            zz = dd(i)
         endif
         h(i) = zz + 20
      end do
      write(6,*) h
      end

      subroutine r4b(n,x)
      real*4 h(10)/10*0/
      complex*8 x(10),dd(10)/1,2,3,4,5,6,7,8,9,10/,zz
      do i=1,n
         if (x(i).eq.0) then
            zz = 10 + dd(i)
         else
            zz = dd(i)
         endif
         h(i) = zz + 20
      end do
      write(6,*) h
      end

      subroutine r8b(n,x)
      real*8 h(10)/10*0/
      complex*16 x(10),dd(10)/1,2,3,4,5,6,7,8,9,10/,zz
      do i=1,n
         if (x(i).eq.0) then
            zz = 10 + dd(i)
         else
            zz = dd(i)
         endif
         h(i) = 20 + zz
      end do
      write(6,*) h
      end

      subroutine r4c(n,x)
      integer x(10)
      real*4 h(10)/10*0/
      complex*8 dd(10)/1,2,3,4,5,6,7,8,9,10/,zz
      do i=1,n
         if (i.gt.5) then
            zz = 10 + dd(i)
         else
            zz = dd(i)
         endif
         h(i) = zz + 20
      end do
      write(6,*) h
      end

      subroutine r8c(n,x)
      integer x(10)
      real*8 h(10)/10*0/
      complex*16 dd(10)/1,2,3,4,5,6,7,8,9,10/,zz
      do i=1,n
         if (i.gt.5) then
            zz = 10 + dd(i)
         else
            zz = dd(i)
         endif
         h(i) = zz + 20
      end do
      write(6,*) h
      end

