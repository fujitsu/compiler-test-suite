      dimension a(11),b(10),c(10),d(10)
      data a/11*1.0/,b/10*2.0/,c/10*3.0/,d/10*4.0/
      s=0
      do 10 i=1,10
        a(i+1) = d(i)
        t1 = - s - a(i)
        s = -c(i)-t1
  10  continue
      write(6,*) a
      write(6,*) c
      write(6,*) s
      stop
      end
