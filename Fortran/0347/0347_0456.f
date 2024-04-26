      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20    a(j)=j

      xx=3.0
      do 10 i=1,10
        x=2.0
        if(a(i).lt.6.+x) go to 1
          xx=1.
          go to 4
   1      b(i)=10.
  10  continue
 4    write(6,*) xx
      write(6,*) b
      stop
      end
