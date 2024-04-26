      program main

      do 10 i=1,10
        ss=i*1.2
        if(ss.lt.7.) then
          x=i+10
        else
          x=i
          go to 1
        endif
        xx=i
  10  continue
 1    write(6,*) xx,x
      stop
      end
