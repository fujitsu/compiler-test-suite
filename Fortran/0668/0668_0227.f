      data      n1/10/,n2/10/,n3/10/
      integer*4   ia(10,10),ib(10,10),ic(10,10),is1
      integer*2   iha(10,10),ihb(10,10),ihc(10,10),ihs
      logical*4   la(10,10),lb(10,10),lc(10,10),ls1
      logical*1   lba(10,10),lbb(10,10),lbc(10,10),lbs1
      real        ra(10,10),rb(10,10),rc(10,10),rs1
      real*8      da(10,10),db(10,10),dc(10,10),ds1
      real*8      qa(10,10),qb(10,10),qc(10,10),qs1
      complex*8   ca(10,10),cb(10,10),cc(10,10),cs1
      complex*16  cda(10,10),cdb(10,10),cdc(10,10),cds1
      complex*16  cqa(10,10),cqb(10,10),cqc(10,10),cqs1
      do 1 j=1,n1
        do 1 i=1,n2
          ia(i,j) = 0
          ib(i,j) = i+j
          ic(i,j) = i-j
          ra(i,j) = 0
          rb(i,j) = i+j
          rc(i,j) = i-j
          da(i,j) = 0
          db(i,j) = i+j
          dc(i,j) = i-j
          qa(i,j) = 0
          qb(i,j) = i+j
          qc(i,j) = i-j
          iha(i,j) = 0
          ihb(i,j) = i+j
          ihc(i,j) = i-j
          la(i,j) = .false.
          lb(i,j) = 0.eq.mod(i,2)
          lc(i,j) = 0.eq.mod(i,3)
          lba(i,j) = .false.
          lbb(i,j) = 0.eq.mod(i,4)
          lbc(i,j) = 0.eq.mod(i,5)
          ca(i,j) = 0
          cb(i,j) = i-1
          cc(i,j) = i+1
          cda(i,j) = 0
          cdb(i,j) = i-1
          cdc(i,j) = i+1
          cqa(i,j) = 0
          cqb(i,j) = i-1
          cqc(i,j) = i+1
 1    continue
      write(6,*) '----- test no.1 -----  outer = v  inner = v & v'
      do 100 i=1,n1
        da(i,1) = dsqrt(dabs(db(i,1)))*dc(i,1)
        do 10 j=1,10
          do 10 k=1,10
            ia(j,k) = ib(j,k) + ic(j,k)
   10   continue
        dc(i,2) = dsqrt(dabs(da(i,2)))+ db(i,2)
        do 11 l=1,n2
          do 11 m=1,n2
            ra(l,m) = rb(l,m)*rc(l,m)
   11     continue
  100 continue
      write(6,*) '----- test no.2 -----  out = v  in = v(mi) & v(si)'
      do 200 i=1,n1
        da(i,1) = dsqrt(dabs(db(i,1)))*dc(i,1)
        do 20 j=1,n2
          do 20 k=1,n2
            ca(j,k) = cb(j,k) + cc(j,k)
   20   continue
        dc(i,2) = dsqrt(dabs(da(i,2)))+ db(i,2)
        ds1 = 0.0
        do 21 l=1,n2
          do 21 m=1,n2
            ra(m,l) = rb(m,l)*rc(m,l)
            ds1 = ds1 + db(m,l)
   21     continue
  200 continue
      write(6,*) ' ds1 = ',ds1
      write(6,*) '----- test no.3 -----  out = v  in = v(mi) & s'
      do 300 i=1,n1
        da(i,1) = dsqrt(dabs(db(i,1)))*dc(i,1)
        do 30 j=1,10
          do 30 k=1,10
            cda(j,k) = cdb(j,k) + cdc(j,k)
   30   continue
        dc(i,2) = dsqrt(dabs(da(i,2)))+ db(i,2)
        do 31 l=1,n2
          do 31 m=1,n2
            qa(l,m) = qb(l,m)*qc(m,l)
   31     continue
  300 continue
      write(6,*) '----- test no.4 -----  out = v  in = v(si) & s'
      do 400 i=1,n1
        da(i,1) = dsqrt(dabs(db(i,1)))*dc(i,1)
        is1 = 0
        do 40 j=1,n2
          do 40 k=1,n3
            cqa(k,j) = cqb(k,j) * cqc(k,j)
   40   continue
        dc(i,2) = dsqrt(dabs(da(i,2)))+ db(i,2)
        do 41 l=1,n2
          do 41 m=1,n2
            is1 = is1 + ib(l,m)
            ia(l,m) = ib(l,m) + ic(l,m)
            ra(l,m) = rb(l,m)*rc(m,l)
   41     continue
  400 continue
      write(6,*) '----- test no.5 -----  out = v  in = s & s'
      do 500 i=1,n1
        da(i,1) = dsqrt(dabs(db(i,1)))*dc(i,1)
        do 50 j=1,n3
          do 50 k=1,n3
            qa(j,k) = qb(j,k) + qc(k,j)
   50   continue
        dc(i,2) = dsqrt(dabs(da(i,2)))+ db(i,2)
        do 51 l=1,n2
          do 51 m=1,n3
            iha(l,m) = ihb(l,m)*ihc(m,l)
   51     continue
  500 continue
      write(6,*) '----- test no.6 -----  out = v  in = v(mi) & n'
      do 600 i=1,n1
        da(i,1) = dsqrt(dabs(db(i,1)))*dc(i,1)
        do 60 j=1,n2
          do 60 k=1,n3
   60   continue
        dc(i,2) = dsqrt(dabs(da(i,2)))+ db(i,2)
        do 61 l=1,10
          do 61 m=1,10
            ra(l,m) = rb(l,m)*rc(l,m)
   61     continue
  600 continue
      write(6,*) 'ia  = ',ia
      write(6,*) 'ra  = ',ra
      write(6,*) 'da  = ',da
      write(6,*) 'dc  = ',dc
      write(6,*) 'iha  = ',iha
      write(6,*) 'qa  = ',qa
      write(6,*) 'ca  = ',ca
      write(6,*) 'cda  = ',cda
      write(6,*) 'cqa  = ',cqa
      stop
      end
