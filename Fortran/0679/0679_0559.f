      program main
      real       ra(10)  , rb(10)  , rs1
      real*8     da(10)  , db(10)  , ds1
      real*8     qa(10)  , qb(10)  , qs1
      logical*1  lba(10) , lbb(10) , lbs1
      logical*4  la(10)  , lb(10)  , ls1
      integer*2  iha(10) , ihb(10) , ihs1
      integer*4  ia(10)  , ib(10)  , is1
      complex*8  ca(10)  , cb(10)  , cs1
      complex*16 cda(10) , cdb(10) , cds1
      complex*16 cqa(10) , cqb(10) , cqs1
      logical*4  mask1(10) , mask2(10) , mask3(10), lon , loff
      data  mask1/.true.,.false.,.true.,.false.,.true.,.false.,
     1            .true.,.false.,.true.,.false./
      data  mask2/10*.true./ , mask3/10*.false./
      data  lon/.true./,loff/.false./
      data  ra/1,2,3,4,5,6,7,8,9,10/
      data  rb/-5,-4,-3,-2,-1,0,1,2,3,4/
      data  da/1,2,3,4,5,6,7,8,9,10/
      data  db/-5,-4,-3,-2,-1,0,1,2,3,4/
      data  qa/1,2,3,4,5,6,7,8,9,10/
      data  qb/-5,-4,-3,-2,-1,0,1,2,3,4/
      data  ia/1,2,3,4,5,6,7,8,9,10/
      data  ib/-5,-4,-3,-2,-1,0,1,2,3,4/
      data  iha/1,2,3,4,5,6,7,8,9,10/
      data  ihb/-5,-4,-3,-2,-1,0,1,2,3,4/
      data  ca/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
     1         (10,10)/
      data  cb/(-4,-4),(-3,-3),(-2,-2),(-1,-1),(0,0),(1,1),(2,2),(3,3),
     1         (4,4),(5,5)/
      data  cda/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
     1          (10,10)/
      data  cdb/(-4,-4),(-3,-3),(-2,-2),(-1,-1),(0,0),(1,1),(2,2),(3,3),
     1          (4,4),(5,5)/
      data  cqa/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
     1         (10,10)/
      data  cqb/(-4,-4),(-3,-3),(-2,-2),(-1,-1),(0,0),(1,1),(2,2),(3,3),
     1         (4,4),(5,5)/
      data  lba/.true.,.false.,.true.,.false.,.true.,.false.,
     1          .true.,.false.,.true.,.false./
      data  lbb/10*.false./
      data  la/.true.,.false.,.true.,.false.,.true.,.false.,
     1         .true.,.false.,.true.,.false./
      data  lb/10*.false./
      do 10 i=1,10
        is1  = ia(i)  +    ib(i)
        ihs1 = iha(i) +    ihb(i)
        rs1  = ra(i)  +    rb(i)
        ds1  = da(i)  +    db(i)
        lbs1 = lba(i) .or. lbb(i)
        ls1  = la(i)  .or. lb(i)
        qs1  = qa(i)  +    qb(i)
        cds1 = cda(i) +    cdb(i)
        cs1  = ca(i)  +    cb(i)
        cqs1 = cqa(i) +    cqb(i)
 10   continue
      write(6,*) ' is1  = ',is1
      write(6,*) ' ihs1 = ',ihs1
      write(6,*) ' rs1  = ',rs1
      write(6,*) ' ds1  = ',ds1
      write(6,*) ' lbs1 = ',lbs1
      write(6,*) ' ls1  = ',ls1
      write(6,*) ' qs1  = ',qs1
      write(6,*) ' cds1 = ',cds1
      write(6,*) ' cs1  = ',cs1
      write(6,*) ' cqs1 = ',cqs1
      do 20 i=1,10
        if(mask1(i)) then
          is1  = ia(i)  +    ib(i)
          ihs1 = iha(i) +    ihb(i)
          rs1  = ra(i)  +    rb(i)
          ds1  = da(i)  +    db(i)
          lbs1 = lba(i) .or. lbb(i)
          ls1  = la(i)  .or. lb(i)
          qs1  = qa(i)  +    qb(i)
          cds1 = cda(i) +    cdb(i)
          cs1  = ca(i)  +    cb(i)
          cqs1 = cqa(i) +    cqb(i)
        endif
 20   continue
      write(6,*) ' is1  = ',is1
      write(6,*) ' ihs1 = ',ihs1
      write(6,*) ' rs1  = ',rs1
      write(6,*) ' ds1  = ',ds1
      write(6,*) ' lbs1 = ',lbs1
      write(6,*) ' ls1  = ',ls1
      write(6,*) ' qs1  = ',qs1
      write(6,*) ' cds1 = ',cds1
      write(6,*) ' cs1  = ',cs1
      write(6,*) ' cqs1 = ',cqs1
      do 30 i=1,10
        if(mask3(i)) then
          is1  = ia(i)  +    ib(i)
          ihs1 = iha(i) +    ihb(i)
          rs1  = ra(i)  +    rb(i)
          ds1  = da(i)  +    db(i)
          lbs1 = lba(i) .or. lbb(i)
          ls1  = la(i)  .or. lb(i)
          qs1  = qa(i)  +    qb(i)
          cds1 = cda(i) +    cdb(i)
          cs1  = ca(i)  +    cb(i)
          cqs1 = cqa(i) +    cqb(i)
        endif
 30   continue
      write(6,*) ' is1  = ',is1
      write(6,*) ' ihs1 = ',ihs1
      write(6,*) ' rs1  = ',rs1
      write(6,*) ' ds1  = ',ds1
      write(6,*) ' lbs1 = ',lbs1
      write(6,*) ' ls1  = ',ls1
      write(6,*) ' qs1  = ',qs1
      write(6,*) ' cds1 = ',cds1
      write(6,*) ' cs1  = ',cs1
      write(6,*) ' cqs1 = ',cqs1
      do 40 i=1,10
        if(lon) then
          is1  = ia(i)  +    ib(i)
          ihs1 = iha(i) +    ihb(i)
          rs1  = ra(i)  +    rb(i)
          ds1  = da(i)  +    db(i)
          lbs1 = lba(i) .or. lbb(i)
          ls1  = la(i)  .or. lb(i)
          qs1  = qa(i)  +    qb(i)
          cds1 = cda(i) +    cdb(i)
          cs1  = ca(i)  +    cb(i)
          cqs1 = cqa(i) +    cqb(i)
        endif
 40   continue
      write(6,*) ' is1  = ',is1
      write(6,*) ' ihs1 = ',ihs1
      write(6,*) ' rs1  = ',rs1
      write(6,*) ' ds1  = ',ds1
      write(6,*) ' lbs1 = ',lbs1
      write(6,*) ' ls1  = ',ls1
      write(6,*) ' qs1  = ',qs1
      write(6,*) ' cds1 = ',cds1
      write(6,*) ' cs1  = ',cs1
      write(6,*) ' cqs1 = ',cqs1
      do 50 i=1,10
        if(loff) then
          is1  = ia(i)  +    ib(i)
          ihs1 = iha(i) +    ihb(i)
          rs1  = ra(i)  +    rb(i)
          ds1  = da(i)  +    db(i)
          lbs1 = lba(i) .or. lbb(i)
          ls1  = la(i)  .or. lb(i)
          qs1  = qa(i)  +    qb(i)
          cds1 = cda(i) +    cdb(i)
          cs1  = ca(i)  +    cb(i)
          cqs1 = cqa(i) +    cqb(i)
        endif
 50   continue
      write(6,*) ' is1  = ',is1
      write(6,*) ' ihs1 = ',ihs1
      write(6,*) ' rs1  = ',rs1
      write(6,*) ' ds1  = ',ds1
      write(6,*) ' lbs1 = ',lbs1
      write(6,*) ' ls1  = ',ls1
      write(6,*) ' qs1  = ',qs1
      write(6,*) ' cds1 = ',cds1
      write(6,*) ' cs1  = ',cs1
      write(6,*) ' cqs1 = ',cqs1
      stop
      end
