      program main
      dimension a(10),b(10),xxx(10)
      data b/10*0.0/

      do 20 j=1,10
        xxx(j)=j
  20    a(j)=j

      xx=1.
      do 10 i=1,10
        xxxx=1.0
        if(a(i).lt.5.) then
          x=1.2
        else
          x=2.2
          go to 1
        endif
        xx=xxxx
        b(i)=xxxx+10
  10  continue
 1    write(6,*) xx
      write(6,*) b

      do 110 i=1,10
        xxxx=1.0
        if(a(i).lt.5.) then
          x=1.2
        else
          x=2.2
          go to 11
        endif
        xxx(i)=xxxx
        b(i)=xxxx+10+a(i)
 110  continue
 11   write(6,*) xxx
      write(6,*) b
      stop
      end
