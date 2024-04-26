      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
        if(i-6) 1,2,3
   1    x=1.
        go to 10
   2    x=2.
        go to 10
   3    if(a(i).eq.8.) then
          x=10.
          ss=i
          go to 4
        else
          x=3.
        endif
        b(i)=10.
  10  continue
 4    write(6,*) x
      write(6,*) b
      stop
      end
