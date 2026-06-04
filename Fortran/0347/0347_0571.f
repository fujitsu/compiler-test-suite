      dimension a1(10),b1(10),c1(10),d1(10),e1(10),f1(10)
      data b1/10*1.0/,c1/10*2.0/,d1/10*3./,e1/10*4./,f1/10*5./
      dimension a2(20),b2(20),c2(20),d2(20),e2(20),f2(20),g2(20)
      data b2/20*1.0/,c2/20*2.0/,d2/20*3./,e2/20*4./,f2/20*5./
      dimension a3(20),b3(20),c3(20),d3(20),e3(20),f3(20),g3(20)
      data b3/20*1.0/,c3/20*2.0/,d3/20*3./,e3/20*4./,f3/20*5./
      do 10 i=1,10
        b1(i) = d1(i)
  20    a1(i) = b1(i) + c1(i)
  30    e1(i) = f1(i)
  10  continue
      write(6,*) '### a1 ###'
      write(6,99) a1
      write(6,*) '### b1 ###'
      write(6,99) b1
      write(6,*) '### c1 ###'
      write(6,99) e1
      do 100 i=1,20
 200    b2(i) = d2(i)
 300    a2(i) = b2(i) + c2(i)
        g2(i) = e2(i)
 400    e2(i) = f2(i)
 100  continue
      write(6,*) '### a2 ###'
      write(6,99) a2
      write(6,*) '### b2 ###'
      write(6,99) b2
      write(6,*) '### g2 ###'
      write(6,99) g2
      write(6,*) '### e2 ###'
      write(6,99) e2
      do 1000 i=1,20
2000    b3(i) = d3(i)
        a3(i) = b3(i) + c3(i)
3000    g3(i) = e3(i)
4000    e3(i) = f3(i)
1000  continue
      write(6,*) '### a3 ###'
      write(6,99) a3
      write(6,*) '### b3 ###'
      write(6,99) b3
      write(6,*) '### g3 ###'
      write(6,99) g3
      write(6,*) '### e3 ###'
      write(6,99) e3
  99  format(5(1x,f14.7))
      stop
      end
