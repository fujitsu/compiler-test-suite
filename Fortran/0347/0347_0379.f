      real*8    a(10),b(10)
      do 10 i=1,10
       a(i)=1.0d0/float(i)
  10   b(i)=a(i)**2
      s=1.1
      do 20 i=1,10
        t = b(1)
        s = s + b(i)
        s = s + a(i)
        t = t + a(i)
  20  continue
      write(6,*) s
      write(6,*) t
      write(6,*) a
      write(6,*) b
      do 30 i=1,10
        s = s + a(i)
  30  continue
      if( abs((s-8.50770473)/s) .gt. 0.1e-5 ) stop ' NG '
      write(6,*) 8.50770473
      stop
      end
