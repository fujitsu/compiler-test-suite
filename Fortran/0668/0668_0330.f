      program main
      parameter (nn=3000)
      integer i401(nn),i402(nn)
      integer list(nn)
      logical l401(nn)
      real*8  r801(nn),r802/0/
      complex c801(nn),c802(nn),c803(2)
      do 10 i=1,nn
        i401(i) = 0
        i402(i) = i
        list(i) = i402(i)
        l401(i) = btest(i,1)
        r801(i) = list(i) - i401(i)
        c801(i) = list(i)
        c802(i) = r801(i)
   10 continue
      j = 1
      k = 1
      do 20 i=1,nn,2
        if (btest(i,2)) then
          if (i401(i).lt.i402(i)) then
            c801(i) = merge(1, 0, r801(j) .le. i)
            j = j + 1
          endif
          c803(1) = merge(1, 0, btest(i401(i),1))
        else
          c803(2) = merge(1, 0, btest(i402(i),1))
          if (r802.lt.r801(i)) then
            r802 = r801(i)
          endif
          if (l401(i)) then
            c802(k) = merge(1, 0, r801(i) .ge. i)
            k = k + 1
          endif
        endif
   20 continue
      write(6,*) ' ## ## '
      write(6,*) ' ## test 1 ## '
      write(6,1) (c801(i),i=2,nn,59)
      write(6,*)
      write(6,1) (c802(i),i=2,nn,59)
      write(6,*)
      write(6,1) (c803(i),i=1,2)
      write(6,*)
      write(6,*) r802
      write(6,*)
      j = 1
      k = 1
      do 30 i=1,nn,2
        if (btest(list(i),2)) then
          c803(1) = merge(1, 0, btest(i401(list(i)),1))
          if (l401(list(i))) then
            c802(list(k)) = merge(1, 0, r801(list(i)) .ge. i)
            k = k + 1
          endif
        else
          c803(2) = merge(1, 0, btest(i402(list(i)),1))
          if (r802.gt.r801(list(i))) then
            r802 = r801(list(i))
          endif
          if (i401(list(i)).lt.i402(list(i))) then
            c801(list(i)) = merge(1, 0, r801(list(j)) .le. i)
            j = j + 1
          endif
        endif
   30 continue
      write(6,*) ' ## test 2 ## '
      write(6,1) (c801(i),i=2,nn,59)
      write(6,*)
      write(6,1) (c802(i),i=2,nn,59)
      write(6,*)
      write(6,1) (c803(i),i=1,2)
      write(6,*)
      write(6,*) r802
      write(6,*)
    1 format(2(2x,'(',e15.6,',',e15.6,')'))
      stop
      end
