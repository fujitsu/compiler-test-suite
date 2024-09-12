      program main
      parameter (r4eps=1e-4)
      integer * 4 i4a00a(10,10,10),i4a00b(50),i4a00c(50)
      real *    4 r4a00a(10,10,10),r4a00b(50),r4a00c(50)
      real *    8 r8a00a(10,10,10),r8a00b(50),r8a00c(50)
      data m1,m2/1,50/
      do 1  i1=1,10
      do 1  i2=1,10
      do 1  i3=1,10
        i4a00a(i1,i2,i3)=i1+i3
        r4a00a(i1,i2,i3)=i2+i3
        r8a00a(i1,i2,i3)=13
1     continue
      n = 1
      do 2 i1=m1,m2
        i4a00b(i1)=n
        i4a00c(i1)=i4a00b(i1)+n
        r4a00b(i1)=i1
        r4a00c(i1)=n
        r8a00b(i1)=n
        r8a00c(i1)=n
        n=n+1
2     continue
      do 100 i001=m1,10,m1
        do 101 i002=1,10,1
          do 102 i003=1,50,1
            if (i003.le.10) then
            if (i4a00a(i001,i002,i003).gt.0) then
              if (r4a00a(i001,i002,i003).gt.0) then
                if (r8a00a(i001,i002,i003).gt.0) then
                  i4a00a(i001,i002,i003)=i4a00b(i003)+i003
                  r4a00a(i001,i002,i003)=r4a00b(i003)-i003
                  r8a00a(i001,i002,i003)=r8a00b(i003)+(i003*0)
                else if (m1.gt.1) then
                  i4a00c(i003)=i4a00c(i003)+i002
                  r4a00c(i003)=r4a00c(i003)-i003
                  r8a00c(i003)=r8a00c(i003)+i003
                endif
              else
                goto 102
              endif
            endif
            endif
            if (i003.le.10) then
              i4a00b(i003)=i4a00c(i003)-i4a00a(i001,i002,i003)
              r4a00b(i003)=r4a00a(i001,i002,i003)-r4a00c(i003)
              r8a00b(i003)=r8a00a(i001,i002,i003)-r8a00c(i003)
            endif
102       continue
101     continue
100   continue
      write(6,*) '## ##'
      write(6,900) i4a00b
900   format(1h0,5i10)
      write(6,901) r4a00b
901   format(1h0,5f12.5)
      write(6,902) r8a00b
902   format(1h0,5f12.5)
      do 200 j001=m1,m2,2
        r4a00b(j001)=j001
        if (j001.gt.20) then
          if (j001.le.30)then
            if (i4a00b(j001).ge.0.0) then
              if (i4a00b(j001).ne.i4a00c(j001)) then
                r4a00b(j001)=j001+(r4a00c(j001)+i4a00c(j001))
                r4a00b(j001)=sin(r4a00b(j001))-real(j001)
              endif
            endif
          endif
        endif
        if (abs(r4a00b(j001)).gt.r4eps) i4a00b(j001)=r4a00b(j001)-1.0
200   continue
      write(6,800) r4a00b
800   format(1h0,5f10.4)
      write(6,801) i4a00b
801   format(1h0,5i10)
      stop
      end
