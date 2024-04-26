      program main
      dimension a(10),b(10),xxx(10)
      data b/10*0.0/,xxx/10*1./

      do 20 j=1,10
  20    a(j)=j

      do 10 i=1,10
        if(a(i).gt.5.) then
          x=1.2
          go to 1
        else
          x=2.2
        endif
        xx=a(i)+x
        b(i)=1.0
  10  continue

      go to 2
   1  xx=a(i)+x
 2    write(6,*) i,xx
      write(6,*) b

      do 110 i=1,10
        if(a(i).gt.5.) then
          x=1.2
          go to 11
        else
          x=2.2
        endif
        xxx(i)=a(i)+x
        b(i)=1.0
 110  continue

      go to 12
  11  xxx(3)=a(i)+x
 12   write(6,*) i,xxx
      write(6,*) b
      stop
      end
