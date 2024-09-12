      integer*4 i800a(10),i800b(10),i800g(10),i800c(10),i800d(10)
      integer*4 i800f(10),i800h(10),i800x(10),i800y(10)
      integer*4 i400a(10),i400b(10)
      data    i800a/10*0/,i800b/10*0/,i800g/10*20/
      data    i800c/10*2/,i800d/10*5/
      data    i800f/10*2/,i800h/10*4/,i800x/10*0/,i800y/10*7/
      data    i400a/1,1,0,-2,-3,2,1,1,2,3/
      data    i400b/1,0,0,1,1,2,1,1,2,0/
      do 10 i=1,10
        i800a(i) = ishft(i800g(i),i400a(i))
        i800b(i) = iand(i800c(i),i800d(i))
        if(i400a(i).eq.1) then
          i800a(i) = ishft(i800b(i),i400a(i))
          i800b(i) = iand(i800f(i),i800h(i))
          if(i400b(i).eq.1) then
            i800a(i) = ior(i800c(i),i800d(i))
            i800b(i) = ieor(i800f(i),i800h(i))
            do 20 j=1,10
              i800x(j) = i800y(j)
   20       continue
          endif
        endif
   10 continue
      write(6,*) i800a
      write(6,*) i800b
      write(6,*) i800x
      stop
      end
