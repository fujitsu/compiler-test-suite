      program main
      real       ra(10),rb(10),rc(10,10),rd(10,10)
      real*8     da(10),db(10),dc(10,10),dd(10,10)
      integer    ia(10),ib(10),ic(10,10),id(10,10)
      complex    ca(10),cb(10),cc(10,10),cd(10,10)
      complex*16 cda(10),cdb(10),cdc(10,10),cdd(10,10)
      integer    l1(10),l2(10),l3(10)
      logical    m1(10),m2(10),m3(10)
      data   m1/.true.,.false.,.true.,.false.,.true.,
     1          .false.,.true.,.false.,.true.,.false./,jc/5/
      ia=0
      da=0
      ca=0

      do 1000 i=1,10
        l1(i) = i
        l2(i) = 11 - i
        l3(i) = i
        m2(i) = .not.m1(i)
        m3(i) = m1(i).or.m2(i)
        ib(i)  = i
        rb(i)  = float(i)
        db(i)  = float(i)
        cb(i)  = float(i)
        cdb(i) = float(i)
        do 1000 j=1,10
          id(j,i)  = i + j
          ic(j,i)  = i + j
          rd(j,i)  = i - j
          rc(j,i)  = i - j
          dd(j,i)  = i * j
          dc(j,i)  = i * j
          cd(j,i)  = i + j
          cc(j,i)  = i + j
          cdd(j,i) = i * j
          cdc(j,i) = i * j
1000  continue
      do 10 i=1,10
        if(m1(i)) then
          ia(l1(i))  = ib(l2(i)) +ic(l3(i),i)
        endif
 10   continue
      write(6,*) ' ia  = ',ia
      do 20 i=1,10
        if(m1(i)) then
          ra(l1(i))  = rb(l2(i)) + rc(i,l3(i))
        endif
        if(m2(i)) then
          ra(l1(i))  = rb(l2(i)) - rc(i,l3(i))
        endif
 20   continue
      write(6,*) ' ra  = ',ra
      do 30 i=1,10
        if(m1(i)) then
          da(l1(i))  = db(l2(i)) + dc(l3(i),l3(i))
        endif
        if(m2(i)) then
          ca(l1(i))  = cb(l2(i)) + cc(l3(i),i)
        endif
 30   continue
      write(6,*) ' da  = ',da
      write(6,*) ' ca  = ',ca
      do 40 i=1,10
        if(m1(jc)) then
          da(l1(i))  = db(l2(i)) + dc(l3(i),i)
        endif
 40   continue
      write(6,*) ' da  = ',da
      do 50 i=1,10
        if(m1(jc)) then
          cda(l1(i))  = cdb(l2(i)) + cdc(l3(i),l3(i))
        endif
        if(m2(jc)) then
          cda(l1(i))  = cdb(l2(i)) + cdc(l3(i),l3(i))
        endif
 50   continue
      write(6,*) ' cda  = ',cda
      do 60 i=1,10
        if(m1(jc)) then
          da(l1(i))  = db(l2(i)) + dc(l1(i),l3(i))
        endif
        if(m2(jc)) then
          ca(l1(i))  = cb(l2(i)) - cc(l1(i),l2(i))
        endif
 60   continue
      write(6,*) ' da  = ',da
      write(6,*) ' ca  = ',ca
      stop
      end
