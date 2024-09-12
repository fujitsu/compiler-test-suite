      integer*4 i800a(10),i800b(10),i800c(10),i800d(10),i800e(10)
      integer*4 i800x(10),i800y(10),i800z(10),i800s(10),i800t(10)
      integer*4 i400a(10),i400b(10)
      data    i800a/10*0/,i800b/10*0/,i800c/10*0/,
     &        i800d/10*0/,i800e/10*0/,
     &        i800x/2,5,1,2,4,7,9,10,-1,5/
     &        i800y/2,4,3,2,89,3,2,9,1,10/
     &        i800z/3,7,11,9,-1,-2,55,16,15,1/
     &        i800s/4,17,11,9,-1,-2,5,6,15,1/
     &        i800t/3,7,21,7,0,-2,55,16,15,1/
      data    i400a/1,1,0,-2,-3,2,1,1,2,3/
      data    i400b/10*0/
      k = 1
      do 10 i=1,10
        i800a(i) = ishft(i800x(i),i400a(i))
        i800b(i) = iand(i800x(i),i800y(i))
        i800c(k) = ior(i800s(k),i800t(i))
        i800d(i) = ieor(i800x(i),i800y(i))
        i800e(i) = not(i800x(i))
        if(i800a(i).gt.i800z(i)) then
          i800a(i) = iand(i800x(i),i800y(i))
        endif
        if(i800a(i).gt.30) then
          i800b(i) = ishft(i800x(i),i400a(i))
        endif
        if(i800x(k).gt.k) then
          i800c(k) = ieor(i800s(k),i800t(k))
        endif
        k=k+1
        if(i400a(i).gt.0) then
          i400b(i) = i800d(i)
        endif
   10 continue
      write(6,*) i800a
      write(6,*) i800b
      write(6,*) i800c
      write(6,*) i800d
      write(6,*) i800e
      write(6,*) i400b
      stop
      end
