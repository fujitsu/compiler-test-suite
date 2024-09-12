      integer*4 i800a(10),i800b(10),i800c(10),i800d(10),i800e(10)
      integer*4 i800x(10),i800y(10),i800z(10)
      integer*4 i400a(10),i400b(10)
      logical*4 l400a(10),l400b(10),l400c(10)
      logical*4 l400d(10),l400e(10),l400f(10)
      data    i800a/10*0/,i800b/10*0/,i800c/10*0/,
     &        i800d/10*0/,i800e/10*0/
     &        i800x/2,5,1,2,4,7,9,10,-1,5/
     &        i800y/2,4,3,2,89,3,2,9,1,10/
     &        i800z/3,7,11,9,-1,-2,55,16,15,1/
      data    i400a/1,1,0,-2,-3,2,1,1,2,3/
      data    i400b/2,1,4,2,1,2,1,1,1,3/
      data    l400a,l400b,l400c,l400d,l400e,l400f/60*.false./
      do 10 i=1,10
        i800a(i) = ishft(i800x(i),i400a(i))+ishft(i800x(i),i400b(i))
        i800b(i) = iand(i800x(i),i800y(i))-iand(i800x(i),i800z(i))
        i800c(i) = ior(i800x(i),i800y(i))*ior(i800x(i),i800z(i))
        i800d(i) = ieor(i800x(i),i800y(i))/ieor(i800x(i),i800z(i))
        i800e(i) = not(i800x(i))**i400b(i)
   10 continue
      write(6,*) i800a
      write(6,*) i800b
      write(6,*) i800c
      write(6,*) i800d
      write(6,*) i800e
      do 20 i=1,10
          l400a(i) = i800x(i).lt.i800y(i)
          l400b(i) = i800x(i).gt.i400a(i)
          l400c(i) = i800x(i).le.i800z(i)
          l400d(i) = i800x(i).ge.i800z(i)
          l400e(i) = i800x(i).eq.i800z(i)
          l400f(i) = i800x(i).ne.i800z(i)
   20 continue
      write(6,*) l400a
      write(6,*) l400b
      write(6,*) l400c
      write(6,*) l400d
      write(6,*) l400e
      write(6,*) l400f
      stop
      end
