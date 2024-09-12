      program main
      integer    ia(10),ib(10),ic(10),id(10)
      logical    la(10)/.true.,.false.,.true.,.false.,.true.,
     1                  .false.,.true.,.false.,.true.,.false./
      do 1 i=1,10
        ia(i) = 0
        ib(i) = i*i
        ic(i) = i
 1      id(i) = - i

      do 10 i=1,10
        ia(i) = mod( ib(7)+3,ic(1) )
        if(.not.la(i)) go to 10
        id(i) = mod( ib(2),ic(7))
  10  continue
      write(6,*) ia
      write(6,*) id

      do 20 i=1,10
        ia(i) = mod(i,ic(5))
        if(.not.la(i)) go to 20
        id(i) = mod(i,ic(2))
  20  continue
      write(6,*) ia
      write(6,*) id

      do 30 i=1,10
        ia(i) = mod(ib(i),ic(7))
        if(.not.la(i)) go to 30
        id(i) = mod(ib(i),ic(3))
  30  continue
      write(6,*) ia
      write(6,*) id

      do 40 i=1,10
        ia(i) = mod(ib(2),i)
        if(.not.la(i)) go to 40
        id(i) = mod(ib(4),i)
  40  continue
      write(6,*) ia
      write(6,*) id

      k = 2
      do 50 i=1,10
        ia(i) =  mod(k,i)
        if(la(i)) id(i) = mod(k,i)
        k = k + 2
  50  continue
      write(6,*) ia
      write(6,*) id

      do 60 i=1,10
        ia(i) = mod(ib(i)+1,i)
        if(la(i)) go to 60
        id(i) = mod(ia(i),i)
  60  continue
      write(6,*) ia
      write(6,*) id

      do 70 i=1,10
        ia(i) = mod(ib(8),ic(i))
        if(la(i)) go to 70
        id(i) = mod(ic(8),ib(i))
  70  continue
      write(6,*) ia
      write(6,*) id

      k = 2
      do 80 i=1,10
        ia(i) = mod(k,ic(i))
        if(la(i)) id(i) = mod(i,ic(i))
        k = k + 5
  80  continue
      write(6,*) ia
      write(6,*) id

      do 90 i=1,10
        ia(i) = mod(ib(i)+1,ic(i))
        if(la(i)) go to 90
        id(i) = mod(ib(i)+i,ic(i))
  90  continue
      write(6,*) ia
      write(6,*) id
      stop
      end
