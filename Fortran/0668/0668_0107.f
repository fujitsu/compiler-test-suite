      real*4  a(20),b(20),d(20)
      integer*2 h(20)
      character*1 c(20)
      data  a,b/40*1./,c/20*'1'/,nn/19/
      data  d/20*3./,h/20*1/
      c(10)='0'
      do 10 i=2,nn-1
        if (c(i).eq.'1') then
          a(i)=a(i-1)*b(i)
        endif
        h(i)=h(i)+i
  10  continue
      do 20 i=2,nn+1
        if (a(i).eq.0) goto 21
          a(i)=a(i)+b(i)
  20  continue
  21  continue
      write(6,*) a
      do 30 while(i.gt.1)
        i=i-1
        b(i)=b(i)+d(i)
  30  continue
      n=0
  40  continue
      if (n.ge.20) goto 41
        n=n+1
        d(n)=d(n)+a(n)
        goto 40
  41  continue
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
