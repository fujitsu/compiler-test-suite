      dimension a(100),b(100),c(100)
      s=0
      do 1 i=1,100
        a(i)=i
        b(i)=102-i*i
  1     c(i)=b(i)/a(i)
      do 10 i=1,100
        t1 = s  + b(i)
        t2 = t1 + a(i)
        t3 = sin(t2)
        t4 = t3 / c(i)
        s  = t4 / b(i)
  10  continue
       write(6,*) s
       stop
       end
