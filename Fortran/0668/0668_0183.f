      integer*4 i800a(20),i800b(20),i800c(20),i800d(20),i800e(20)
      integer*4 i800f(20),i800g(20),i800h(20)
      integer*4 i400a(20),i400x(20),i400y(20)
      data    i800a/20*1/,i800b/20*2/,i800c/20*3/,i800d/20*4/
      data    i800e/20*5/,i800f/20*6/,i800g/20*7/,i800h/20*8/
      data    i400a/1,1,0,-2,-3,2,1,1,2,3,0,0,0,0,0,0,0,0,0,1/
      data    i400x/2,2,3,3,4,4,5,5,6,6,8,8,10,10,12,12,14,14,16,16/
      data    i400y/4,7,3,5,3,9,8,10,6,5,1,10,1,10,1,10,1,10,1,10/
      do 10 i=1,20,2
        i800a(i400y(i)) = ishft(i800g(i400x(i)),i400a(i400y(i)))
        i800b(i400x(i)) = iand(i800h(i400y(i)),i800g(i400x(i)))
        i800c(i400y(i)) = ior(i800h(i400x(i)),i800g(i400x(i)))
        i800d(i400y(i)) = ieor(i800g(i400x(i)),i800h(i400y(i)))
        i800e(i400x(i)) = not(i800d(i400y(i)))
        i800f(i400y(i)) = i800e(i400x(i))
   10 continue
      write(6,90) i800a
      write(6,90) i800b
      write(6,90) i800c
      write(6,90) i800d
      write(6,90) i800e
      write(6,90) i800f
   90 format(20i4,/)
      stop
      end
