      integer*4  ia1(8),ia2(8),ib1(8)
      real       ra1(8),ra2(8),rb1(8)
      real*8     da1(8),da2(8),db1(8)
      complex    ca1(8),ca2(8),cb1(8)
      complex*16 cda1(8),cda2(8),cdb1(8)
      logical*4 lm(8)/.true.,.false.,.true.,.false.,
     1                .true.,.false.,.true.,.false./

      data ib1/0,1,2,3,4,5,6,7/
      data rb1/0,1,2,3,4,5,6,7/
      data db1/0,1,2,3,4,5,6,7/
      data cb1/(0,0),(1,0),(0,1),(1,1),(2,2),(3,3),(4,4),(5,5)/
      data cdb1/(0,0),(1,0),(0,1),(1,1),(2,2),(3,3),(4,4),(5,5)/

      do 10 i=1,8
        ra1(i) = rb1(i) / 2.
        da1(i) = db1(i) / 2.
        ca1(i) = cb1(i) / 2.
        cda1(i) = cdb1(i) / 2.
10    continue
      write(6,*) ra1
      write(6,*) da1
      write(6,*) ca1
      write(6,*) cda1

      do 11 i=1,8
        ra2s  =  rb1(i) / 2.
        da2s  =  db1(i) / 2.
        ca2s  =  cb1(i) / 2.
        cda2s =  cdb1(i)/ 2.
        if ( lm(i) ) then
          ra2s  =  rb1(i) /  2.
          da2s  =  db1(i) /  2.
          ca2s  =  cb1(i) /  2.
          cda2s =  cdb1(i)/  2.
        endif
        ra2(i) = ra2s
        da2(i) = da2s
        ca2(i) = ca2s
        cda2(i)= cda2s
11    continue
      write(6,*) ra2
      write(6,*) da2
      write(6,*) ca2
      write(6,*) cda2
      stop
      end
