      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20    a(j)=j

      go to 5
  1   do 30 j=1,10
 30   a(i)=6.
      xx=9.
      go to 6
  5   xx=8.
  6   do 10 i=1,10
        ss=a(i)
        if(a(i).eq.6.) then
          go to 2
        endif
        xx=b(i)
        if(xx.ge.9) go to 1
  10  continue
 2    write(6,*) xx
      write(6,*) b
      stop
      end
