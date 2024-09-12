      program main
      real       ra(10),rb(10),rc(10,10),rd(10,10)
      real*8     da(10),db(10),dc(10,10),dd(10,10)
      real*8     qa(10),qb(10),qc(10,10),qd(10,10)
      integer    ia(10),ib(10),ic(10,10),id(10,10)
      complex    ca(10),cb(10),cc(10,10),cd(10,10)
      complex*16 cda(10),cdb(10),cdc(10,10),cdd(10,10)
      complex*16 cqa(10),cqb(10),cqc(10,10),cqd(10,10)
      integer    l1(10),l2(10),l3(10)

      do 1000 i=1,10
        l1(i) = i
        l2(i) = 11 - i
        l3(i) = i
        ia(i)  = i
        ib(i)  = i
        rb(i)  = float(i)
        db(i)  = float(i)
        qb(i)  = float(i)
        cb(i)  = float(i)
        cdb(i) = float(i)
        cqb(i) = float(i)
        do 1000 j=1,10
          id(j,i)  = i + j
          ic(j,i)  = i + j
          rd(j,i)  = i - j
          rc(j,i)  = i - j
          dd(j,i)  = i * j
          dc(j,i)  = i * j
          qd(j,i)  = i * j
          qc(j,i)  = i * j
          cd(j,i)  = i + j
          cc(j,i)  = i + j
          cdd(j,i) = i * j
          cqd(j,i) = i * j
1000  continue
      do 10 i=1,10
        ia(l1(i))  = ia(l2(i))
        ra(l1(i))  = rb(l2(i))  + rc(l1(i),l3(i))
 10   continue
      write(6,*) ' ia  = ',ia
      write(6,*) ' ra  = ',ra
      do 20 i=1,10
        ia(l1(i))  = ic(l1(i),l2(i))
        qa(l1(i))  = qb(l2(i))
        ra(l1(i)) = rb(l1(i)) - rc(l1(i),l2(i))
 20   continue
      write(6,*) ' ia  = ',ia
      write(6,*) ' ra  = ',ra
      do 30 i=1,10
        da(l1(i))  = dc(l2(i),l3(i))
        cqa(l1(i))  = cqb(l1(i))
        ra(l2(i)) = rb(l2(i)) - rc(l2(i),l3(i))
 30   continue
      write(6,*) ' da   = ',da
      write(6,*) ' cqa  = ',cqa
      write(6,*) ' ra   = ',ra
      stop
      end
