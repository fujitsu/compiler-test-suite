      integer*4 i800a(10),i800b(10),i800c(10),i800d(10),i800e(10)
      integer*4 i800f(10),i800g(10)
      integer*4 i400a(10)
      data    i800a/10*0/,i800b/10*20/,i800c/10*0/,
     &        i800d/10*0/,i800e/10*0/,i800f/10*0/,i800g/10*0/
      data    i400a/1,1,0,-2,-3,2,1,1,2,3/
      do 10 i=1,10
        i800a(i) = ishft(i800b(i),i400a(i))
        i800a(i) = ishft(i800a(i),i400a(i))
        i800c(i) = iand(i800a(i),i800b(i))
        i800d(i) = ior(i800c(i),i800b(i))
        i800e(i) = ieor(i800d(i),i800a(i))
        i800f(i) = not(i800e(i))
        i800g(i) = i800f(i)
   10 continue
      write(6,*) i800g
      stop
      end
