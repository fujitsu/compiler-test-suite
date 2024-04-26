      integer*8 a(20)/-1, 2, 3,14*0,-1,2,3/
      integer*8 b(20)/-1,-2,-3,14*0,1,2,3/
      do i=1,20
         a(i) = sign(a(i),b(i))
      enddo
      write(6,*) a
      end
