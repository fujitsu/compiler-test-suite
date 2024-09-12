      program main
      integer * 4 i4a00a(10,10,10),i4a00b(50),i4a00c(50)
      real   *  4 r4a00a(10,10,10),r4a00b(50),r4a00c(50)
      real   *  8 r8a00a(10,10,10),r8a00b(50),r8a00c(50)
      write(6,*) '## ##'
      n=50
      do 1 i1=1,10
        do 1 i2=1,10
          do 1 i3=1,10
            i4a00a(i1,i2,i3)=1
            r4a00a(i1,i2,i3)=1
            r8a00a(i1,i2,i3)=1
1     continue
      do 2 i=1,n
        i4a00b(i)=i
        i4a00c(i)=0
        r4a00b(i)=i
        r4a00c(i)=0
        r8a00b(i)=i
        r8a00c(i)=0
2     continue

      do 102 i3=1,10
        do 101 i2=1,10
          n1 = i3
          do 100 i1=1,10
            i4a00a(i1,i2,i3) = n1
            n1 = n1 + 1
            if (i2.gt.5) goto 100
              i4a00a(i1,i2,i3)=i4a00a(i1,i2,i3)+r4a00b(i1)+r8a00c(i2)
              r4a00a(i1,i2,i3)=r4a00a(i1,i2,i3)/i4a00b(i1)+r8a00c(i2)
              r8a00a(i1,i2,i3)=r8a00a(i1,i2,i3)+i4a00b(i1)+r4a00c(i2)
            if (i4a00c(i1).gt.0) then
              if (r4a00c(i2).gt.0) then
                if (r8a00a(i1,i2,i3).gt.0) then
                  i4a00b(i1)=i4a00a(i1,i2,i3)+i1
                  r4a00b(i1)=r4a00a(i1,i2,i3)+i2
                  r8a00b(i1)=r8a00a(i1,i2,i3)+i3
                 endif
               endif
             endif
             if ((i4a00c(i1).gt.0).and.(r4a00c(i1).gt.0)) then
               i4a00b(i1)=i4a00b(i1)/i1-r4a00a(i1,i2,i3)
              endif
100        continue
101      continue
102    continue
      write(6,*) '## no.1 ##'
      write(6,990) i4a00a,i4a00b,i4a00c
      write(6,991) r4a00a,r4a00b,r4a00c
      write(6,992) r8a00a,r8a00b,r8a00c
990   format(1h0,6i10)
991   format(1h0,5f15.3)
992   format(1h0,5f15.3)
      call test2(1,50)
      stop
      end
      subroutine test2(n000a,n000b)
      integer * 4 i4a00a(50),i4a00b(50),i4a00c(50)
      real    * 4 r4a00a(50),r4a00b(50),r4a00c(50)
      real    * 8 r8a00a(50),r8a00b(50),r8a00c(50)
      n = 1
      do 2  i001=n000a,n000b,1
        i4a00a(i001)=0
        r4a00a(i001)=0.
        r8a00a(i001)=0.
        i4a00b(i001)=i001
        r4a00b(i001)=i001
        r8a00b(i001)=i001
        i4a00c(i001)=i001
        r4a00c(i001)=i001
        r8a00c(i001)=i001
2     continue
      do 200 jn001=n000a,n000b,n
        if ((i4a00a(jn001)+i4a00b(jn001)).gt.0) then
          r4a00a(jn001)=r4a00a(jn001)+r8a00a(jn001)
          if ((r4a00c(1).gt.0).or.(r4a00c(10).gt.0)) then
            r4a00b(jn001)=r8a00b(jn001)+jn001
          endif
          if (jn001.gt.5) then
            r8a00b(jn001)=jn001
          endif
        endif
200   continue
      write(6,990) i4a00a,i4a00b,i4a00c
      write(6,991) r4a00a,r4a00b,r4a00c
      write(6,992) r8a00a,r8a00b,r8a00c
990   format(1h0,5i10)
991   format(1h0,5f10.5)
992   format(1h0,5f10.5)
      stop
      end
