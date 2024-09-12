      integer*4  ia1(8),ia2(8),ia3(2),ib1(8)
      real       ra1(8),ra2(8),ra3(2),rb1(8)
      real*8     da1(8),da2(8),da3(2),db1(8)
      complex    ca1(8),ca2(8),ca3(2),cb1(8)
      complex*16 cda1(8),cda2(8),cda3(2),cdb1(8)
      logical*4 lm(8)/.true.,.false.,.true.,.false.,
     1                .true.,.false.,.true.,.false./
      integer   l1(2),l2(2,2),l3(2,2,2),l4(2,2,2,2),l5(2,2,2,2,2)
      data  l1/1,2/,l2/1,2,1,2/,l3/1,2,1,2,1,2,1,2/
      data  l4/1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2/
      data  l5/1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,
     1         1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2/
      data ib1/0,1,2,3,3,2,1,0/
      data rb1/0,1,2,3,3,2,1,0/
      data db1/0,1,2,3,3,2,1,0/
      data cb1/(0,0),(1,0),(0,1),(1,1),(2,2),(3,3),(2,2),(3,3)/
      data cdb1/(0,0),(1,0),(0,1),(1,1),(2,2),(3,3),(2,2),(3,3)/

      do 10 i=1,8
        ia1(i) = ib1(i) * 2
        ra1(i) = rb1(i) * 4
        da1(i) = db1(i) * 6
        ca1(i) = cb1(i) * 8
        cda1(i) = cdb1(i) * 16
10    continue
      write(6,*) ia1
      write(6,*) ra1
      write(6,*) da1
      write(6,*) ca1
      write(6,*) cda1

      do 11 i=1,8
        ia2s  = 2  * ib1(i)
        ra2s  = 2  * rb1(i)
        da2s  = 2  * db1(i)
        ca2s  = 2  * cb1(i)
        cda2s = 2  * cdb1(i)
        if ( lm(i) ) then
          ia2s  = 32 * ib1(i)
          ra2s  = 16 * rb1(i)
          da2s  = 8  * db1(i)
          ca2s  = 4  * cb1(i)
          cda2s = 2  * cdb1(i)
        endif
        ia2(i) = ia2s
        ra2(i) = ra2s
        da2(i) = da2s
        ca2(i) = ca2s
        cda2(i)= cda2s
11    continue
      write(6,*) ia2
      write(6,*) ra2
      write(6,*) da2
      write(6,*) ca2
      write(6,*) cda2

      do 20 i=1,2
        ia3(l1(i)) = i
        ra3(l2(i,i)) = i
        da3(l3(i,i,i)) = i
        ca3(l4(i,i,i,i)) = i
        cda3(l5(i,i,i,i,i)) = i
20    continue
      write(6,*) ia3
      write(6,*) ra3
      write(6,*) da3
      write(6,*) ca3
      write(6,*) cda3

      do 30 i=1,2
        if (lm(i)) then
         ia3(l1(i)) = 5
         ra3(l2(i,i)) = 6
         da3(l3(i,i,i)) = 7
         ca3(l4(i,i,i,i)) = 8
         cda3(l5(i,i,i,i,i)) = 9
        endif
30    continue
      write(6,*) ia3
      write(6,*) ra3
      write(6,*) da3
      write(6,*) ca3
      write(6,*) cda3
      stop
      end
