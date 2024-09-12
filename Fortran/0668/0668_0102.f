      real*4  a(20),b(20),c(20)/20*0/
      logical*4 l(20)
      data  a,b/20*1.,20*2./,l/10*.false.,10*.true./,nn/19/
      l(10)=.true.
      c(20)=111.
      do 10 i=2,nn
        c(i)=float(i)
        if (a(i).gt.a(i)) goto 10
        if (l(i)) then
          a(i)=a(i+1)*b(i)
        endif
  10  continue
      do 20 i=2,nn+1
        if (a(i).eq.0) goto 20
          a(i)=a(i)+b(i)
          if (l(i)) then
            c(i)=a(i)-c(i)
          else
            b(i)=b(i)+c(i)
          endif
  20  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
