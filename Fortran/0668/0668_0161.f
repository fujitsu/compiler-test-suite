      program main
      integer * 4 i4a00a(20,20),i4a00b(20),i4a00c(20)
      real    * 4 r4a00a(20,20),r4a00b(20),r4a00c(20)
      real    * 8 r8a00a(20,20),r8a00b(20),r8a00c(20)
      common /c1/i4a00a,i4a00b,i4a00c,
     +           r4a00a,r4a00b,r4a00c,
     +           r8a00a,r8a00b,r8a00c
      data m1,m2/1,20/
      write(6,*) '## ##'
      call init
      do 100 i001=1,m1
        if (i001.eq.20) goto 101
        i4a00b(i001)=r4a00c(i001)+i001
100   continue
101   continue
      write(6,900) i4a00b
900   format(1h0,5i6)
      call init
      do 200 i002=m2,m1,-1
        r4a00b(i4a00b(i002))=r4a00c(i4a00b(i002))-r8a00b(i4a00c(i002))
        if (r4a00c(i4a00b(i002)).gt.0) then
          r8a00c(i4a00b(i002))=0
        endif
200   continue
      write(6,910) r4a00b,r8a00c
910   format(1h0,5f13.4)
      call init
      do 300 j003=1,5
        do 301 i003=m1,m2,j003
          r4a00b(i003)=r4a00b(i003)+i003
          r8a00b(i003)=r4a00b(i003)*2.
          r4a00a(j003,i003)=r4a00b(i003)-r8a00b(i003)+i003
          if (r4a00a(j003,i003).ne.0) then
            r4a00c(i003)=real(j003)-real(i4a00b(i003))
          endif
301     continue
300   continue
      write(6,930) r4a00a,r4a00c
930   format(1h0,5f13.4)
      call init
      do 400 i004=m1,m2,int(m1)
        i4a00b(1)=r4a00b(i004)+i004
        r4a00c(i004)=i4a00b(1)
        if (i4a00b(1).gt.0) then
          r4a00c(i004)=i4a00a(1,1)+i004
        endif
400   continue
      write(6,940) i4a00a
940   format(1h0,5i8)
      write(6,941) r4a00b,r4a00b,r4a00c
941   format(1h0,5f13.3)
      stop
      end
      subroutine init
      integer * 4 i4a00a(20,20),i4a00b(20),i4a00c(20)
      real    * 4 r4a00a(20,20),r4a00b(20),r4a00c(20)
      real    * 8 r8a00a(20,20),r8a00b(20),r8a00c(20)
      common /c1/i4a00a,i4a00b,i4a00c,
     +           r4a00a,r4a00b,r4a00c,
     +           r8a00a,r8a00b,r8a00c
      data m1,m2/1,20/
      do 1 i=m1,m2
      do 1 j=1,20
        i4a00a(i,j)=j
        r4a00a(j,i)=j
        r8a00a(i,j)=1
1     continue
      do 2 i=1,20
        i4a00b(i)=i
        r4a00b(i)=i
        r8a00b(i)=i
2     continue
      do 3 i=20,1,-1
        i4a00c(i)=i
        r4a00c(i)=i
        r8a00c(i)=i
3     continue
      return
      end
