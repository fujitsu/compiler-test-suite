      real*4 e(10),et(10)
      x=0.
      do 10 i=1,10
        e(i)=i
   10   x=max(x,e(i))
      write(6,*) x
      x=0.
      do 20 i=1,10
        e(i)=2.
   20   x=min(x,e(i))
      write(6,*) x
      do 30 i=1,10
        et(i)=x
   30   x=min(x,e(i))
      write(6,*) x,et
      stop
      end
