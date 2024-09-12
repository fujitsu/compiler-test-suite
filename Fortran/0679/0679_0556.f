      program main
      real a(10),b(10),sa(2)
      data n/10/
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,2,4,4,6,2,8,2,10/
      logical la(10),lb(10)
      data la/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./
      data lb/10*.false./
      data s/0/,sa/2*0/

      do 10 i=1,n
        s = a(i)
  10  continue
      write(6,*) s

      do 11 i=1,n
        s = 1.0
  11  continue
      write(6,*) s

      do 20 i=1,10
        if(la(i)) then
          s = a(i)
        endif
  20  continue
      write(6,*) s

      do 21 i=1,10
        if(lb(i)) then
          s = b(i)
        endif
  21  continue
      write(6,*) s

      do 23 i=1,10
        if(la(i)) then
          s = 100.0
        endif
  23  continue
      write(6,*) s

      do 24 i=1,10
        if(lb(i)) then
          s = 200.0
        endif
  24  continue
      write(6,*) s

      do 30 i=1,n
        sa(1) = a(i)
  30  continue
      write(6,*) sa(1)

      do 31 i=1,n
        sa(2) = 300.
  31  continue
      write(6,*) sa(2)

      do 32 i=1,n
        if(la(i)) sa(1) = a(i)
  32  continue
      write(6,*) sa(1)

      do 33 i=1,10
        if(lb(i)) sa(1) = b(i)
  33  continue
      write(6,*) sa(1)

      do 34 i=1,n
        if(la(i)) sa(2) = 111.
  34  continue
      write(6,*) sa(2)

      do 35 i=1,10
        if(lb(i)) sa(1) = 112.
  35  continue
      write(6,*) sa(1)
      stop
      end
