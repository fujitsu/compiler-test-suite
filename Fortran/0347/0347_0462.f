      program main
      dimension a(10),xxx(10)

      do 20 j=1,10
        xxx(j)=j
  20    a(j)=j

      xx=0.
      do 10 i=1,10
        x=i
        if(a(i).gt.5.) go to 1
        xx=i+x
  10  continue
 1    write(6,*) xx

      do 110 i=1,10
        x=i
        if(a(i).gt.5.) go to 11
        xxx(i)=i+x
 110  continue
 11   write(6,*) xxx
      stop
      end
