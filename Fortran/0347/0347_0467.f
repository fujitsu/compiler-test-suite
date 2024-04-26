      program main
      dimension a(10)

      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
        ss=i*2.0
        if(a(10).eq.ss) then
          x=1.2
          go to 1
        else
          x=2.2
        endif
        xx=a(i)+x
  10  continue
      go to 2
   1  xx=a(i)+x+0.5
 2    write(6,*) xx
      stop
      end
