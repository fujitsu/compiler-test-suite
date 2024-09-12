      real*8 a(10),b(10)
      integer*4 bbb(10)
      write(6,*) '                 **'
      do 10 i=1,10
      a(i)=i
      write(10) a(i)
10    continue
      endfile 10
      rewind 10
      write(6,*) '** if 1.0===>10.0 output ok ok **'
      do 20 ii=1,20
      read(10,end=999) b(ii)
      write(6,*) b(ii)
20    continue
999   continue
      backspace 10
      do 50 i=1,10
      a(i)=i+10
      write(10) a(i)
50    continue
      do 35 iii=1,10
      backspace 10
35    continue
      write(6,*) '** if 11.0===> 20.0 output ok ok **'
      do 40 ii=1,20
      read(10,end=888) b(ii)
      write(6,*) b(ii)
40    continue
888   backspace 10
      write(6,*) '** if 21===> 30   output ok ok **'
      do 30 jj=1,10
      write(10) jj+20
      backspace 10
      read(10) bbb(jj)
      write(6,*) bbb(jj)
30    continue
      write(6,*) '**         ended **'
      stop
      end
