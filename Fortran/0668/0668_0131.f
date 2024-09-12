      program main
      parameter (rr=0.0001)
      integer i401(10,10,10),i402(50),i403(50)
      real    r401(10,10,10),r402(50),r403(50)
      real*8  r801(10,10,10),r802(50),r803(50)
      data m1,m2/1,50/
      do 10 i=1,10
        do 10 j=1,10
          do 10 k=1,10
            i401(i,j,k) = i + k
            r401(i,j,k) = j + k
            r801(i,j,k) = k
   10 continue
      n = 1
      do 20 i=m1,m2
        i402(i) = n
        i403(i) = i402(i) + n
        r402(i) = i
        r403(i) = n
        r802(i) = n
        r803(i) = n
        n=n+1
   20 continue
      do 30 i=m1,10,m1
        do 40 j=1,10,1
          do 50 k=1,50,1
            if (k.le.10) then
              if (i401(i,j,k).gt.0) then
                if (r401(i,j,k).gt.0) then
                  if (r801(i,j,k).gt.0) then
                    i401(i,j,k) = i402(k) + k
                    r401(i,j,k) = r402(k) - k
                    r801(i,j,k) = r802(k) + (k*0)
                  else if (m1.gt.1) then
                    i403(k) = i403(k) + j
                    r403(k) = r403(k) - k
                    r803(k) = r803(k) + k
                  endif
                else
                  goto 50
                endif
              endif
            endif
            if (k.le.10) then
              i402(k)=i403(k)-i401(i,j,k)
              r402(k)=r401(i,j,k)-r403(k)
              r802(k)=r801(i,j,k)-r803(k)
            endif
   50     continue
   40   continue
   30 continue
      write(6,*) '## ##'
      write(6,*) '## test 1 ##'
      write(6,1) i402
      write(6,*)
      write(6,2) r402
      write(6,*)
      write(6,3) r802
      write(6,*)
      do 70 i=m1,m2,2
        r402(i)=i
        if (i.gt.20) then
          if (i.le.30)then
            if (i402(i).ge.0.0) then
              if (i402(i).ne.i403(i)) then
                r402(i) = i + (r403(i) + i403(i))
                r402(i) = sin(r402(i)) - real(i)
              endif
            endif
          endif
        endif
        if (abs(r402(i)).gt.rr) i402(i) = r402(i) - 1.0
   70 continue
      write(6,*) ' ## test 2 ## '
      write(6,4) r402
      write(6,*)
      write(6,5) i402
    1 format(1h0,5i10)
    2 format(1h0,5e15.6)
    3 format(1h0,5e15.6)
    4 format(1h0,5e15.6)
    5 format(1h0,5i10)
      stop
      end
