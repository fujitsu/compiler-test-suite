      program main
      real*4  r401(1025),r402(1025),r403(1025),r404(1025)
      real*8  r801(1025),r802(1025),r803(1025)
      complex c801(1025),c802(1025)
      complex*16 c1601(1025),c1602(1025),c1603(1025)
      logical l401(1025),l402(1025)
      integer list(1025)
      data r401,r402,r403,r404/4100*1/
      data r801,r802,r803/3075*2/
      data c801/1025*(3.,0.)/
      data c1601,c1602/2050*(4.,0.)/
      data m/1/
      do 10 i=1,10
   10   m = m * 2
      m = m + 1
      do 20 i=1,m
        l401(i) = btest(i,0)
        l402(i) = btest(i,3)
        list(i) = i
        c802(i) = i
        c1603(i) = i + 1
   20 continue
      do 30 i=1,m
        if (l401(i)) then
          r401(m) = i + r801(i)
          r402(i) = sin(r401(m)) + r802(i)
        else
          n = i
          if (l402(i)) then
            r403(m-1) = r801(m-1) * r801(i) + r802(i)
          else
            if (.not.(l401(i).or.l402(i))) then
              r803(list(m)) = r802(list(i)) + r801(n)
            else
              r404(i) = r402(i) + r801(list(i)) + r802(i)
            endif
          endif
        endif
   30 continue
      write(6,*) ' ## ## '
      write(6,*)
      write(6,*) ' ### test 1 ### '
      write(6,1) r401(m),r403(m-1),r803(list(m))
      write(6,*)
      write(6,1) (r402(i),i=1,m,25)
      write(6,*)
      write(6,1) (r404(i),i=2,m,25)
      write(6,*)
      do 40 i=1,10
   40   n = i-12
      do 50 i=m,1,n
        if (l401(i).or.l402(i)) then
          k = abs(n)
          c802(k) = r801(k) + r802(-n) + r803(i)
          c801(i) = ccos(c802(k)) + sin(r402(i))
          if (c802(k).eq.c801(i)) then
            c1602(i) = c1602(i) * c1603(k)
          else
            k = m - 10
            c1601(5) = r802(list(k)) * c1602(i) + i
          endif
        endif
   50 continue
      write(6,*) ' ### test 2 ### '
      write(6,2) (c801(i),i=1,1000,25)
      write(6,*)
      write(6,1) c802(2)
      write(6,*)
      write(6,2) (c1602(i),i=2,1025,40)
      write(6,*)
      write(6,1) c1601(5)
      write(6,*)
      do 60 i=1,m,2
        n = 1
        if (dble(c1602(i)).lt.dble(c1602(list(i)))) then
          c1601(2) = c1602(list(i))
          c1601(3) = i
          if (sin(r401(i)).ne.cos(r402(i))) then
            c801(n) = c1601(2) / c1603(3) - i
          else
            c801(m) = c1601(2) * c1603(3) + i
          endif
        else
          c1601(4) = c1602(list(i))
          c1601(5) = i
        endif
   60 continue
      write(6,*) ' ### test 3 ### '
      write(6,2) (c1601(i),i=2,5)
      write(6,*)
      write(6,2) (c801(i),i=1,2)
      write(6,*)

    1 format(5e15.6)
    2 format(2(2x,'(',e15.6,',',e15.6,')'))
      stop
      end
