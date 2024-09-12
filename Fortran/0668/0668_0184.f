      integer*4 i800a(10,10),i800b(10,10),i800c(10,10),i800d(10,10)
      integer*4 i800e(10,10),i800f(10,10),i800g(10,10)
      integer*4 i400a(100),xxx,yyy
      data    i800a/100*3/,i800b/100*21/,i800c/100*1/,
     &        i800d/100*0/,i800e/100*0/,i800f/100*0/,i800g/100*0/
      data    i400a/20*-1,20*0,20*1,20*2,10*3,1,1,2,0,0,0,1,2,1,1/
      xxx=0
      yyy=0
      k=0
      do 111 k=1,100
      do 10 i=1,10
      do 10 j=1,10
        i800a(i,j) = ishft(i800b(i,j),i400a(j))
        i800a(i,j) = ishft(i800a(i,j),i400a(j))
        i800c(i,j) = iand(i800a(i,j),i800b(i,j))
        i800d(i,j) = ior(i800c(i,j),i800b(i,j))
        i800e(i,j) = ieor(i800d(i,j),i800a(i,j))
        i800f(i,j) = not(i800e(i,j))
        i800g(i,j) = i800f(i,j)
   10 continue
        i400a(k)   = i400a(k)-1
  111 continue
      write(6,*) i400a
      i800g(10,10) = i800c(10,10)
      do 222 k=1,100
        if(i400a(k).eq.0) then
          do 21 j1=1,10
          do 21 i1=1,10
            i800a(i1,j1) = ishft(i800c(i1,j1),i400a(j1))
            i800d(i1,j1) = ior(i800a(i1,j1),i800b(i1,j1))
            i800g(i1,j1) = i800f(i1,j1)
            xxx=xxx+1
   21     continue
        else
          do 22 j2=1,10
          do 22 i2=1,10
            i800a(i2,j2) = ishft(i800a(i2,j2),i400a(j2))
            i800c(i2,j2) = iand(i800a(i2,j2),i800b(i2,j2))
            i800e(i2,j2) = ieor(i800e(i2,j2),i800a(i2,j2))
            i800f(i2,j2) = not(i800e(i2,j2))
            yyy=yyy+1
   22     continue
        endif
  222 continue
      write(6,90) i800a
      write(6,90) i800b
      write(6,90) i800c
      write(6,90) i800d
      write(6,90) i800e
      write(6,90) i800f
   90 format(10i7)
      write(6,*) xxx
  999 write(6,*) yyy
      stop
      end
