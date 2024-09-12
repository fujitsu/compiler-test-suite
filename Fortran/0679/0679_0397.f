      program main
      real       ra(10),rb(10),rc(10,10),rd(10,10)
      real*8     da(10),db(10),dc(10,10),dd(10,10)
      integer    ia(10),ib(10),ic(10,10),id(10,10)
      complex    ca(10),cb(10),cc(10,10),cd(10,10)
      complex*16 cda(10),cdb(10),cdc(10,10),cdd(10,10)
      integer l1(10),l2(10),l3(10)

      do 1000 i=1,10
        l1(i) = i
        l2(i) = 11 - i
        l3(i) = i
        ib(i)  = i
        rb(i)  = float(i)
        db(i)  = float(i)
        cb(i)  = float(i)
        cdb(i) = float(i)
        do 1000 j=1,10
          id(j,i)  = i + j
          rd(j,i)  = i - j
          dd(j,i)  = i * j
          cd(j,i)  = i + j
          cdd(j,i) = i * j
1000  continue
      do 10 i=1,10
        ia(l1(i))  = ib(l2(i))  + id(l1(i),l3(i))
        ra(l1(i))  = rb(l2(i))  + rd(l1(i),l3(i))
        da(l1(i))  = db(l2(i))  * dd(l1(i),l3(i))
        ca(l1(i))  = cb(l2(i))  - cd(l1(i),l3(i))
        cda(l1(i)) = cdb(l2(i)) + cdd(l1(i),l3(i))
 10   continue
      write(6,*) ' ia  = ',ia
      write(6,*) ' ra  = ',ra
      write(6,*) ' da  = ',da
      write(6,*) ' ca  = ',ca
      write(6,*) ' cda = ',cda
      stop
      end
