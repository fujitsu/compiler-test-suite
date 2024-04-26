      program main
      dimension a(10),b(10),xx(10)
      data b/10*0.0/,xx/10*0.0/

      do 20 j=1,10
  20    a(j)=j

      do 310 i=1,10
        x=2.0
        if(a(9).lt.6.+x) go to 31
          xxx  =1.
          go to 34
  31      b(i)=10.+a(i)
 310  continue
 34   write(6,*) xxx
      write(6,*) b

      do 10 i=1,10
        x=2.0
        if(a(9).lt.6.+x) go to 1
          xx(i)=1.
          go to 4
   1      b(i)=10.+a(i)
  10  continue
 4    write(6,*) xx
      write(6,*) b

      do 110 i=1,10
        x=2.0
        if(a(9).ge.6.+x) go to 11
          xx(i)=1.
          go to 14
  11      b(i)=10.+a(i)
 110  continue
 14   write(6,*) xx
      write(6,*) b
      stop
      end
